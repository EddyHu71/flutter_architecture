// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
class _$RegisterModelTearOff {
  const _$RegisterModelTearOff();

  _RegisterModel call({int? id, String? token}) {
    return _RegisterModel(
      id: id,
      token: token,
    );
  }

  RegisterModel fromJson(Map<String, Object?> json) {
    return RegisterModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterModel = _$RegisterModelTearOff();

/// @nodoc
mixin _$RegisterModel {
  int? get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call({int? id, String? token});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$RegisterModelCopyWith(
          _RegisterModel value, $Res Function(_RegisterModel) then) =
      __$RegisterModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? token});
}

/// @nodoc
class __$RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$RegisterModelCopyWith<$Res> {
  __$RegisterModelCopyWithImpl(
      _RegisterModel _value, $Res Function(_RegisterModel) _then)
      : super(_value, (v) => _then(v as _RegisterModel));

  @override
  _RegisterModel get _value => super._value as _RegisterModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_RegisterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  _$_RegisterModel({this.id, this.token});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  final int? id;
  @override
  final String? token;

  @override
  String toString() {
    return 'RegisterModel(id: $id, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, token);

  @JsonKey(ignore: true)
  @override
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      __$RegisterModelCopyWithImpl<_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(this);
  }
}

abstract class _RegisterModel implements RegisterModel {
  factory _RegisterModel({int? id, String? token}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  int? get id;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
