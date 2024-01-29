import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_project/src/data/models/common/pagination.dart';

part 'pagination_response.freezed.dart';
part 'pagination_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationResponse<T> with _$PaginationResponse<T> {
  const factory PaginationResponse({
    required String message,
    required List<T> data,
    required Pagination pagination,
    required String status,
  }) = _PaginationResponse<T>;

  factory PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginationResponseFromJson(json, fromJsonT);
}
