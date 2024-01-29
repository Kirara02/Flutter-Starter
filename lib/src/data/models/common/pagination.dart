import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
