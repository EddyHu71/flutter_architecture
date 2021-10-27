// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfile _$UpdateProfileFromJson(Map<String, dynamic> json) {
  return _UpdateProfile.fromJson(json);
}

/// @nodoc
class _$UpdateProfileTearOff {
  const _$UpdateProfileTearOff();

  _UpdateProfile call({String? name, String? job, String? updatedAt}) {
    return _UpdateProfile(
      name: name,
      job: job,
      updatedAt: updatedAt,
    );
  }

  UpdateProfile fromJson(Map<String, Object?> json) {
    return UpdateProfile.fromJson(json);
  }
}

/// @nodoc
const $UpdateProfile = _$UpdateProfileTearOff();

/// @nodoc
mixin _$UpdateProfile {
  String? get name => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileCopyWith<UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileCopyWith<$Res> {
  factory $UpdateProfileCopyWith(
          UpdateProfile value, $Res Function(UpdateProfile) then) =
      _$UpdateProfileCopyWithImpl<$Res>;
  $Res call({String? name, String? job, String? updatedAt});
}

/// @nodoc
class _$UpdateProfileCopyWithImpl<$Res>
    implements $UpdateProfileCopyWith<$Res> {
  _$UpdateProfileCopyWithImpl(this._value, this._then);

  final UpdateProfile _value;
  // ignore: unused_field
  final $Res Function(UpdateProfile) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UpdateProfileCopyWith<$Res>
    implements $UpdateProfileCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(
          _UpdateProfile value, $Res Function(_UpdateProfile) then) =
      __$UpdateProfileCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? job, String? updatedAt});
}

/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    extends _$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(
      _UpdateProfile _value, $Res Function(_UpdateProfile) _then)
      : super(_value, (v) => _then(v as _UpdateProfile));

  @override
  _UpdateProfile get _value => super._value as _UpdateProfile;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_UpdateProfile(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProfile implements _UpdateProfile {
  _$_UpdateProfile({this.name, this.job, this.updatedAt});

  factory _$_UpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProfileFromJson(json);

  @override
  final String? name;
  @override
  final String? job;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'UpdateProfile(name: $name, job: $job, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfile &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, job, updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileCopyWith<_UpdateProfile> get copyWith =>
      __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileToJson(this);
  }
}

abstract class _UpdateProfile implements UpdateProfile {
  factory _UpdateProfile({String? name, String? job, String? updatedAt}) =
      _$_UpdateProfile;

  factory _UpdateProfile.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfile.fromJson;

  @override
  String? get name;
  @override
  String? get job;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfileCopyWith<_UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
