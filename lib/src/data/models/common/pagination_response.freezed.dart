// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationResponse<T> _$PaginationResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationResponse<T> {
  String get message => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationResponseCopyWith<T, PaginationResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseCopyWith<T, $Res> {
  factory $PaginationResponseCopyWith(PaginationResponse<T> value,
          $Res Function(PaginationResponse<T>) then) =
      _$PaginationResponseCopyWithImpl<T, $Res, PaginationResponse<T>>;
  @useResult
  $Res call(
      {String message, List<T> data, Pagination pagination, String status});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginationResponseCopyWithImpl<T, $Res,
        $Val extends PaginationResponse<T>>
    implements $PaginationResponseCopyWith<T, $Res> {
  _$PaginationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
    Object? pagination = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationResponseImplCopyWith<T, $Res>
    implements $PaginationResponseCopyWith<T, $Res> {
  factory _$$PaginationResponseImplCopyWith(_$PaginationResponseImpl<T> value,
          $Res Function(_$PaginationResponseImpl<T>) then) =
      __$$PaginationResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String message, List<T> data, Pagination pagination, String status});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PaginationResponseImplCopyWithImpl<T, $Res>
    extends _$PaginationResponseCopyWithImpl<T, $Res,
        _$PaginationResponseImpl<T>>
    implements _$$PaginationResponseImplCopyWith<T, $Res> {
  __$$PaginationResponseImplCopyWithImpl(_$PaginationResponseImpl<T> _value,
      $Res Function(_$PaginationResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
    Object? pagination = null,
    Object? status = null,
  }) {
    return _then(_$PaginationResponseImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationResponseImpl<T> implements _PaginationResponse<T> {
  const _$PaginationResponseImpl(
      {required this.message,
      required final List<T> data,
      required this.pagination,
      required this.status})
      : _data = data;

  factory _$PaginationResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationResponseImplFromJson(json, fromJsonT);

  @override
  final String message;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Pagination pagination;
  @override
  final String status;

  @override
  String toString() {
    return 'PaginationResponse<$T>(message: $message, data: $data, pagination: $pagination, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationResponseImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_data), pagination, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationResponseImplCopyWith<T, _$PaginationResponseImpl<T>>
      get copyWith => __$$PaginationResponseImplCopyWithImpl<T,
          _$PaginationResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationResponse<T> implements PaginationResponse<T> {
  const factory _PaginationResponse(
      {required final String message,
      required final List<T> data,
      required final Pagination pagination,
      required final String status}) = _$PaginationResponseImpl<T>;

  factory _PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationResponseImpl<T>.fromJson;

  @override
  String get message;
  @override
  List<T> get data;
  @override
  Pagination get pagination;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$PaginationResponseImplCopyWith<T, _$PaginationResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
