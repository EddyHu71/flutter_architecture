// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _Failed failed() {
    return const _Failed();
  }

  _InvalidToken invalidToken() {
    return const _InvalidToken();
  }

  _NoInternet noInternet() {
    return const _NoInternet();
  }

  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failed,
    required TResult Function() invalidToken,
    required TResult Function() noInternet,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failed value) failed,
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'AuthFailure.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failed,
    required TResult Function() invalidToken,
    required TResult Function() noInternet,
    required TResult Function() serverError,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failed value) failed,
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AuthFailure {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
abstract class _$InvalidTokenCopyWith<$Res> {
  factory _$InvalidTokenCopyWith(
          _InvalidToken value, $Res Function(_InvalidToken) then) =
      __$InvalidTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidTokenCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidTokenCopyWith<$Res> {
  __$InvalidTokenCopyWithImpl(
      _InvalidToken _value, $Res Function(_InvalidToken) _then)
      : super(_value, (v) => _then(v as _InvalidToken));

  @override
  _InvalidToken get _value => super._value as _InvalidToken;
}

/// @nodoc

class _$_InvalidToken implements _InvalidToken {
  const _$_InvalidToken();

  @override
  String toString() {
    return 'AuthFailure.invalidToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failed,
    required TResult Function() invalidToken,
    required TResult Function() noInternet,
    required TResult Function() serverError,
  }) {
    return invalidToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
  }) {
    return invalidToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failed value) failed,
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
  }) {
    return invalidToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class _InvalidToken implements AuthFailure {
  const factory _InvalidToken() = _$_InvalidToken;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NoInternetCopyWith<$Res> {
  __$NoInternetCopyWithImpl(
      _NoInternet _value, $Res Function(_NoInternet) _then)
      : super(_value, (v) => _then(v as _NoInternet));

  @override
  _NoInternet get _value => super._value as _NoInternet;
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'AuthFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failed,
    required TResult Function() invalidToken,
    required TResult Function() noInternet,
    required TResult Function() serverError,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failed value) failed,
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AuthFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failed,
    required TResult Function() invalidToken,
    required TResult Function() noInternet,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failed,
    TResult Function()? invalidToken,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failed value) failed,
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failed value)? failed,
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}
