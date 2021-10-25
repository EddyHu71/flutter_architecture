// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewData _$ViewDataFromJson(Map<String, dynamic> json) {
  return _ViewData.fromJson(json);
}

/// @nodoc
class _$ViewDataTearOff {
  const _$ViewDataTearOff();

  _ViewData call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<Datum>? data,
      Support? support}) {
    return _ViewData(
      page: page,
      perPage: perPage,
      total: total,
      totalPages: totalPages,
      data: data,
      support: support,
    );
  }

  ViewData fromJson(Map<String, Object?> json) {
    return ViewData.fromJson(json);
  }
}

/// @nodoc
const $ViewData = _$ViewDataTearOff();

/// @nodoc
mixin _$ViewData {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;
  Support? get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewDataCopyWith<ViewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewDataCopyWith<$Res> {
  factory $ViewDataCopyWith(ViewData value, $Res Function(ViewData) then) =
      _$ViewDataCopyWithImpl<$Res>;
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<Datum>? data,
      Support? support});

  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class _$ViewDataCopyWithImpl<$Res> implements $ViewDataCopyWith<$Res> {
  _$ViewDataCopyWithImpl(this._value, this._then);

  final ViewData _value;
  // ignore: unused_field
  final $Res Function(ViewData) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ));
  }

  @override
  $SupportCopyWith<$Res>? get support {
    if (_value.support == null) {
      return null;
    }

    return $SupportCopyWith<$Res>(_value.support!, (value) {
      return _then(_value.copyWith(support: value));
    });
  }
}

/// @nodoc
abstract class _$ViewDataCopyWith<$Res> implements $ViewDataCopyWith<$Res> {
  factory _$ViewDataCopyWith(_ViewData value, $Res Function(_ViewData) then) =
      __$ViewDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<Datum>? data,
      Support? support});

  @override
  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class __$ViewDataCopyWithImpl<$Res> extends _$ViewDataCopyWithImpl<$Res>
    implements _$ViewDataCopyWith<$Res> {
  __$ViewDataCopyWithImpl(_ViewData _value, $Res Function(_ViewData) _then)
      : super(_value, (v) => _then(v as _ViewData));

  @override
  _ViewData get _value => super._value as _ViewData;

  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_ViewData(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewData implements _ViewData {
  _$_ViewData(
      {this.page,
      @JsonKey(name: 'per_page') this.perPage,
      this.total,
      @JsonKey(name: 'total_pages') this.totalPages,
      this.data,
      this.support});

  factory _$_ViewData.fromJson(Map<String, dynamic> json) =>
      _$$_ViewDataFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  final List<Datum>? data;
  @override
  final Support? support;

  @override
  String toString() {
    return 'ViewData(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data, support: $support)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViewData &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.support, support) || other.support == support));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(data), support);

  @JsonKey(ignore: true)
  @override
  _$ViewDataCopyWith<_ViewData> get copyWith =>
      __$ViewDataCopyWithImpl<_ViewData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewDataToJson(this);
  }
}

abstract class _ViewData implements ViewData {
  factory _ViewData(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<Datum>? data,
      Support? support}) = _$_ViewData;

  factory _ViewData.fromJson(Map<String, dynamic> json) = _$_ViewData.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  List<Datum>? get data;
  @override
  Support? get support;
  @override
  @JsonKey(ignore: true)
  _$ViewDataCopyWith<_ViewData> get copyWith =>
      throw _privateConstructorUsedError;
}
