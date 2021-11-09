// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Support _$SupportFromJson(Map<String, dynamic> json) {
  return _Support.fromJson(json);
}

/// @nodoc
class _$SupportTearOff {
  const _$SupportTearOff();

  _Support call({String? url, String? text}) {
    return _Support(
      url: url,
      text: text,
    );
  }

  Support fromJson(Map<String, Object?> json) {
    return Support.fromJson(json);
  }
}

/// @nodoc
const $Support = _$SupportTearOff();

/// @nodoc
mixin _$Support {
  String? get url => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportCopyWith<Support> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCopyWith<$Res> {
  factory $SupportCopyWith(Support value, $Res Function(Support) then) =
      _$SupportCopyWithImpl<$Res>;
  $Res call({String? url, String? text});
}

/// @nodoc
class _$SupportCopyWithImpl<$Res> implements $SupportCopyWith<$Res> {
  _$SupportCopyWithImpl(this._value, this._then);

  final Support _value;
  // ignore: unused_field
  final $Res Function(Support) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SupportCopyWith<$Res> implements $SupportCopyWith<$Res> {
  factory _$SupportCopyWith(_Support value, $Res Function(_Support) then) =
      __$SupportCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? text});
}

/// @nodoc
class __$SupportCopyWithImpl<$Res> extends _$SupportCopyWithImpl<$Res>
    implements _$SupportCopyWith<$Res> {
  __$SupportCopyWithImpl(_Support _value, $Res Function(_Support) _then)
      : super(_value, (v) => _then(v as _Support));

  @override
  _Support get _value => super._value as _Support;

  @override
  $Res call({
    Object? url = freezed,
    Object? text = freezed,
  }) {
    return _then(_Support(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Support implements _Support {
  _$_Support({this.url, this.text});

  factory _$_Support.fromJson(Map<String, dynamic> json) =>
      _$$_SupportFromJson(json);

  @override
  final String? url;
  @override
  final String? text;

  @override
  String toString() {
    return 'Support(url: $url, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Support &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, text);

  @JsonKey(ignore: true)
  @override
  _$SupportCopyWith<_Support> get copyWith =>
      __$SupportCopyWithImpl<_Support>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportToJson(this);
  }
}

abstract class _Support implements Support {
  factory _Support({String? url, String? text}) = _$_Support;

  factory _Support.fromJson(Map<String, dynamic> json) = _$_Support.fromJson;

  @override
  String? get url;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$SupportCopyWith<_Support> get copyWith =>
      throw _privateConstructorUsedError;
}
