// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profil.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profil _$ProfilFromJson(Map<String, dynamic> json) {
  return _Profil.fromJson(json);
}

/// @nodoc
class _$ProfilTearOff {
  const _$ProfilTearOff();

  _Profil call({Data? data, Support? support}) {
    return _Profil(
      data: data,
      support: support,
    );
  }

  Profil fromJson(Map<String, Object?> json) {
    return Profil.fromJson(json);
  }
}

/// @nodoc
const $Profil = _$ProfilTearOff();

/// @nodoc
mixin _$Profil {
  Data? get data => throw _privateConstructorUsedError;
  Support? get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilCopyWith<Profil> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilCopyWith<$Res> {
  factory $ProfilCopyWith(Profil value, $Res Function(Profil) then) =
      _$ProfilCopyWithImpl<$Res>;
  $Res call({Data? data, Support? support});

  $DataCopyWith<$Res>? get data;
  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class _$ProfilCopyWithImpl<$Res> implements $ProfilCopyWith<$Res> {
  _$ProfilCopyWithImpl(this._value, this._then);

  final Profil _value;
  // ignore: unused_field
  final $Res Function(Profil) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
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
abstract class _$ProfilCopyWith<$Res> implements $ProfilCopyWith<$Res> {
  factory _$ProfilCopyWith(_Profil value, $Res Function(_Profil) then) =
      __$ProfilCopyWithImpl<$Res>;
  @override
  $Res call({Data? data, Support? support});

  @override
  $DataCopyWith<$Res>? get data;
  @override
  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class __$ProfilCopyWithImpl<$Res> extends _$ProfilCopyWithImpl<$Res>
    implements _$ProfilCopyWith<$Res> {
  __$ProfilCopyWithImpl(_Profil _value, $Res Function(_Profil) _then)
      : super(_value, (v) => _then(v as _Profil));

  @override
  _Profil get _value => super._value as _Profil;

  @override
  $Res call({
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_Profil(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profil implements _Profil {
  _$_Profil({this.data, this.support});

  factory _$_Profil.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilFromJson(json);

  @override
  final Data? data;
  @override
  final Support? support;

  @override
  String toString() {
    return 'Profil(data: $data, support: $support)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profil &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.support, support) || other.support == support));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, support);

  @JsonKey(ignore: true)
  @override
  _$ProfilCopyWith<_Profil> get copyWith =>
      __$ProfilCopyWithImpl<_Profil>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilToJson(this);
  }
}

abstract class _Profil implements Profil {
  factory _Profil({Data? data, Support? support}) = _$_Profil;

  factory _Profil.fromJson(Map<String, dynamic> json) = _$_Profil.fromJson;

  @override
  Data? get data;
  @override
  Support? get support;
  @override
  @JsonKey(ignore: true)
  _$ProfilCopyWith<_Profil> get copyWith => throw _privateConstructorUsedError;
}
