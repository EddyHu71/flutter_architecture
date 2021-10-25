// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
class _$InfoTearOff {
  const _$InfoTearOff();

  _Info call(
      {int? count,
      @JsonKey(name: 'more_records') bool? moreRecords,
      int? page,
      @JsonKey(name: 'page_size') int? pageSize,
      String? sort,
      @JsonKey(name: 'sort_by') String? sortBy}) {
    return _Info(
      count: count,
      moreRecords: moreRecords,
      page: page,
      pageSize: pageSize,
      sort: sort,
      sortBy: sortBy,
    );
  }

  Info fromJson(Map<String, Object?> json) {
    return Info.fromJson(json);
  }
}

/// @nodoc
const $Info = _$InfoTearOff();

/// @nodoc
mixin _$Info {
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'more_records')
  bool? get moreRecords => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;
  String? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_by')
  String? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res>;
  $Res call(
      {int? count,
      @JsonKey(name: 'more_records') bool? moreRecords,
      int? page,
      @JsonKey(name: 'page_size') int? pageSize,
      String? sort,
      @JsonKey(name: 'sort_by') String? sortBy});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res> implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  final Info _value;
  // ignore: unused_field
  final $Res Function(Info) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? moreRecords = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? sort = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      moreRecords: moreRecords == freezed
          ? _value.moreRecords
          : moreRecords // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$InfoCopyWith(_Info value, $Res Function(_Info) then) =
      __$InfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count,
      @JsonKey(name: 'more_records') bool? moreRecords,
      int? page,
      @JsonKey(name: 'page_size') int? pageSize,
      String? sort,
      @JsonKey(name: 'sort_by') String? sortBy});
}

/// @nodoc
class __$InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res>
    implements _$InfoCopyWith<$Res> {
  __$InfoCopyWithImpl(_Info _value, $Res Function(_Info) _then)
      : super(_value, (v) => _then(v as _Info));

  @override
  _Info get _value => super._value as _Info;

  @override
  $Res call({
    Object? count = freezed,
    Object? moreRecords = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? sort = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_Info(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      moreRecords: moreRecords == freezed
          ? _value.moreRecords
          : moreRecords // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Info implements _Info {
  _$_Info(
      {this.count,
      @JsonKey(name: 'more_records') this.moreRecords,
      this.page,
      @JsonKey(name: 'page_size') this.pageSize,
      this.sort,
      @JsonKey(name: 'sort_by') this.sortBy});

  factory _$_Info.fromJson(Map<String, dynamic> json) => _$$_InfoFromJson(json);

  @override
  final int? count;
  @override
  @JsonKey(name: 'more_records')
  final bool? moreRecords;
  @override
  final int? page;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @override
  final String? sort;
  @override
  @JsonKey(name: 'sort_by')
  final String? sortBy;

  @override
  String toString() {
    return 'Info(count: $count, moreRecords: $moreRecords, page: $page, pageSize: $pageSize, sort: $sort, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Info &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.moreRecords, moreRecords) ||
                other.moreRecords == moreRecords) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, moreRecords, page, pageSize, sort, sortBy);

  @JsonKey(ignore: true)
  @override
  _$InfoCopyWith<_Info> get copyWith =>
      __$InfoCopyWithImpl<_Info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoToJson(this);
  }
}

abstract class _Info implements Info {
  factory _Info(
      {int? count,
      @JsonKey(name: 'more_records') bool? moreRecords,
      int? page,
      @JsonKey(name: 'page_size') int? pageSize,
      String? sort,
      @JsonKey(name: 'sort_by') String? sortBy}) = _$_Info;

  factory _Info.fromJson(Map<String, dynamic> json) = _$_Info.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(name: 'more_records')
  bool? get moreRecords;
  @override
  int? get page;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;
  @override
  String? get sort;
  @override
  @JsonKey(name: 'sort_by')
  String? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$InfoCopyWith<_Info> get copyWith => throw _privateConstructorUsedError;
}
