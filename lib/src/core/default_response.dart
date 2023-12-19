import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_response.freezed.dart';
part 'default_response.g.dart';

@freezed
class DefaultResponse with _$DefaultResponse {
  factory DefaultResponse({
    String? message,
    bool? status,
    bool? success,
  }) = _DefaultResponse;

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);
}
