import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';

const Duration _defaultConnectTimeout =
    Duration(seconds: Duration.millisecondsPerMinute);
const Duration _defaultReceiveTimeout =
    Duration(seconds: Duration.millisecondsPerMinute);

class UXHttp {
  late final String baseUrl;

  late Dio _dio;
  late final List<Interceptor>? interceptors;

  UXHttp(
      {String? xBaseUrl,
      Interceptors? this.interceptors,
      String? defaultAuthorization}) {
    // get api base url from .env file
    baseUrl = xBaseUrl ?? dotenv.env['BASEURL'] ?? '';
    // set options
    _dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: _defaultConnectTimeout,
        receiveTimeout: _defaultReceiveTimeout,
        responseType: ResponseType.json));
    // set request header
    _dio.options.headers['Accept'] = 'application/json';
    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }
    if (defaultAuthorization?.isNotEmpty ?? false) {
      _dio.options.headers['Authorization'] = "Bearer $defaultAuthorization";
    }
  }

  // Get : ---------------------------------------------------------------------

  Future<ApiResult<T>> get<T>(
    String endPoint, {
    dynamic data,
    bool authorization = false,
    String? customAuthorization,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.get(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: customAuthorization,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  // Post : --------------------------------------------------------------------

  Future<ApiResult<T>> post<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? customAuthorization,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.post(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: customAuthorization,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  // Patch : -------------------------------------------------------------------

  Future<ApiResult<T>> patch<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? customAuthorization,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.patch(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: customAuthorization,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  // Put : ---------------------------------------------------------------------

  Future<ApiResult<T>> put<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? customAuthorization,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.put(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: customAuthorization,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  // Delete : ------------------------------------------------------------------

  Future<ApiResult<T>> delete<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? customAuthorization,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.delete(endPoint,
            data: data, options: options, cancelToken: cancelToken),
        token: customAuthorization,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<ApiResult<T>> sendRequest<T>(
    Future<Response<dynamic>> Function() httpRequest, {
    bool authorization = false,
    String? token,
    dynamic Function(Response<dynamic>)? onSuccess,
    dynamic Function(int sent, int total)? onSendProgress,
  }) async {
    if (authorization) setAuthorization(token);
    // _setAcceptLanguage();

    try {
      Response<dynamic> response = await httpRequest();
      return ApiResult.success(
        data: onSuccess?.call(response) ?? "Sukses",
      );
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  void setAuthorization(String? token) {
    if (token != null && token.isNotEmpty) {
      log('#=====================auth');
      log('Login as token: Bearer $token');
      log('=====================#');
      _dio.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  // void _setAcceptLanguage() {
  //   _dio.options.headers['Accept-Language'] =
  //       UserPrefs().getLocale()?.languageCode;
  // }
}
