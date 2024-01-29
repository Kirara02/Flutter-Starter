// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseImpl<T> _$$PaginationResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationResponseImpl<T>(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PaginationResponseImplToJson<T>(
  _$PaginationResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.map(toJsonT).toList(),
      'pagination': instance.pagination,
      'status': instance.status,
    };
