// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profil_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfilModel _$UpdateProfilModelFromJson(Map<String, dynamic> json) {
  return _UpdateProfilModel.fromJson(json);
}

/// @nodoc
class _$UpdateProfilModelTearOff {
  const _$UpdateProfilModelTearOff();

  _UpdateProfilModel call({String? name, String? job, String? updatedAt}) {
    return _UpdateProfilModel(
      name: name,
      job: job,
      updatedAt: updatedAt,
    );
  }

  UpdateProfilModel fromJson(Map<String, Object?> json) {
    return UpdateProfilModel.fromJson(json);
  }
}

/// @nodoc
const $UpdateProfilModel = _$UpdateProfilModelTearOff();

/// @nodoc
mixin _$UpdateProfilModel {
  String? get name => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfilModelCopyWith<UpdateProfilModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilModelCopyWith<$Res> {
  factory $UpdateProfilModelCopyWith(
          UpdateProfilModel value, $Res Function(UpdateProfilModel) then) =
      _$UpdateProfilModelCopyWithImpl<$Res>;
  $Res call({String? name, String? job, String? updatedAt});
}

/// @nodoc
class _$UpdateProfilModelCopyWithImpl<$Res>
    implements $UpdateProfilModelCopyWith<$Res> {
  _$UpdateProfilModelCopyWithImpl(this._value, this._then);

  final UpdateProfilModel _value;
  // ignore: unused_field
  final $Res Function(UpdateProfilModel) _then;

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
abstract class _$UpdateProfilModelCopyWith<$Res>
    implements $UpdateProfilModelCopyWith<$Res> {
  factory _$UpdateProfilModelCopyWith(
          _UpdateProfilModel value, $Res Function(_UpdateProfilModel) then) =
      __$UpdateProfilModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? job, String? updatedAt});
}

/// @nodoc
class __$UpdateProfilModelCopyWithImpl<$Res>
    extends _$UpdateProfilModelCopyWithImpl<$Res>
    implements _$UpdateProfilModelCopyWith<$Res> {
  __$UpdateProfilModelCopyWithImpl(
      _UpdateProfilModel _value, $Res Function(_UpdateProfilModel) _then)
      : super(_value, (v) => _then(v as _UpdateProfilModel));

  @override
  _UpdateProfilModel get _value => super._value as _UpdateProfilModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_UpdateProfilModel(
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
class _$_UpdateProfilModel implements _UpdateProfilModel {
  _$_UpdateProfilModel({this.name, this.job, this.updatedAt});

  factory _$_UpdateProfilModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProfilModelFromJson(json);

  @override
  final String? name;
  @override
  final String? job;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'UpdateProfilModel(name: $name, job: $job, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfilModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, job, updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UpdateProfilModelCopyWith<_UpdateProfilModel> get copyWith =>
      __$UpdateProfilModelCopyWithImpl<_UpdateProfilModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfilModelToJson(this);
  }
}

abstract class _UpdateProfilModel implements UpdateProfilModel {
  factory _UpdateProfilModel({String? name, String? job, String? updatedAt}) =
      _$_UpdateProfilModel;

  factory _UpdateProfilModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfilModel.fromJson;

  @override
  String? get name;
  @override
  String? get job;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfilModelCopyWith<_UpdateProfilModel> get copyWith =>
      throw _privateConstructorUsedError;
}
