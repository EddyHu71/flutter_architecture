// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardEventTearOff {
  const _$OnboardEventTearOff();

  _Started authToken() {
    return const _Started();
  }
}

/// @nodoc
const $OnboardEvent = _$OnboardEventTearOff();

/// @nodoc
mixin _$OnboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) authToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? authToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? authToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardEventCopyWith<$Res> {
  factory $OnboardEventCopyWith(
          OnboardEvent value, $Res Function(OnboardEvent) then) =
      _$OnboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardEventCopyWithImpl<$Res> implements $OnboardEventCopyWith<$Res> {
  _$OnboardEventCopyWithImpl(this._value, this._then);

  final OnboardEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$OnboardEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OnboardEvent.authToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authToken,
  }) {
    return authToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authToken,
  }) {
    return authToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authToken,
    required TResult orElse(),
  }) {
    if (authToken != null) {
      return authToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) authToken,
  }) {
    return authToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? authToken,
  }) {
    return authToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? authToken,
    required TResult orElse(),
  }) {
    if (authToken != null) {
      return authToken(this);
    }
    return orElse();
  }
}

abstract class _Started implements OnboardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$OnboardStateTearOff {
  const _$OnboardStateTearOff();

  _OnboardState call(
      {required JWTToken jwtToken,
      required bool isAuthenticated,
      required bool isLoading,
      required Option<Either<OnBoardFailure, Unit>>
          authTokenFailOrSuccessOption}) {
    return _OnboardState(
      jwtToken: jwtToken,
      isAuthenticated: isAuthenticated,
      isLoading: isLoading,
      authTokenFailOrSuccessOption: authTokenFailOrSuccessOption,
    );
  }
}

/// @nodoc
const $OnboardState = _$OnboardStateTearOff();

/// @nodoc
mixin _$OnboardState {
  JWTToken get jwtToken => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<OnBoardFailure, Unit>> get authTokenFailOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardStateCopyWith<OnboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardStateCopyWith<$Res> {
  factory $OnboardStateCopyWith(
          OnboardState value, $Res Function(OnboardState) then) =
      _$OnboardStateCopyWithImpl<$Res>;
  $Res call(
      {JWTToken jwtToken,
      bool isAuthenticated,
      bool isLoading,
      Option<Either<OnBoardFailure, Unit>> authTokenFailOrSuccessOption});
}

/// @nodoc
class _$OnboardStateCopyWithImpl<$Res> implements $OnboardStateCopyWith<$Res> {
  _$OnboardStateCopyWithImpl(this._value, this._then);

  final OnboardState _value;
  // ignore: unused_field
  final $Res Function(OnboardState) _then;

  @override
  $Res call({
    Object? jwtToken = freezed,
    Object? isAuthenticated = freezed,
    Object? isLoading = freezed,
    Object? authTokenFailOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      jwtToken: jwtToken == freezed
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as JWTToken,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authTokenFailOrSuccessOption: authTokenFailOrSuccessOption == freezed
          ? _value.authTokenFailOrSuccessOption
          : authTokenFailOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OnBoardFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$OnboardStateCopyWith<$Res>
    implements $OnboardStateCopyWith<$Res> {
  factory _$OnboardStateCopyWith(
          _OnboardState value, $Res Function(_OnboardState) then) =
      __$OnboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {JWTToken jwtToken,
      bool isAuthenticated,
      bool isLoading,
      Option<Either<OnBoardFailure, Unit>> authTokenFailOrSuccessOption});
}

/// @nodoc
class __$OnboardStateCopyWithImpl<$Res> extends _$OnboardStateCopyWithImpl<$Res>
    implements _$OnboardStateCopyWith<$Res> {
  __$OnboardStateCopyWithImpl(
      _OnboardState _value, $Res Function(_OnboardState) _then)
      : super(_value, (v) => _then(v as _OnboardState));

  @override
  _OnboardState get _value => super._value as _OnboardState;

  @override
  $Res call({
    Object? jwtToken = freezed,
    Object? isAuthenticated = freezed,
    Object? isLoading = freezed,
    Object? authTokenFailOrSuccessOption = freezed,
  }) {
    return _then(_OnboardState(
      jwtToken: jwtToken == freezed
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as JWTToken,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authTokenFailOrSuccessOption: authTokenFailOrSuccessOption == freezed
          ? _value.authTokenFailOrSuccessOption
          : authTokenFailOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OnBoardFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_OnboardState implements _OnboardState {
  const _$_OnboardState(
      {required this.jwtToken,
      required this.isAuthenticated,
      required this.isLoading,
      required this.authTokenFailOrSuccessOption});

  @override
  final JWTToken jwtToken;
  @override
  final bool isAuthenticated;
  @override
  final bool isLoading;
  @override
  final Option<Either<OnBoardFailure, Unit>> authTokenFailOrSuccessOption;

  @override
  String toString() {
    return 'OnboardState(jwtToken: $jwtToken, isAuthenticated: $isAuthenticated, isLoading: $isLoading, authTokenFailOrSuccessOption: $authTokenFailOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardState &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.authTokenFailOrSuccessOption,
                    authTokenFailOrSuccessOption) ||
                other.authTokenFailOrSuccessOption ==
                    authTokenFailOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jwtToken, isAuthenticated,
      isLoading, authTokenFailOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$OnboardStateCopyWith<_OnboardState> get copyWith =>
      __$OnboardStateCopyWithImpl<_OnboardState>(this, _$identity);
}

abstract class _OnboardState implements OnboardState {
  const factory _OnboardState(
      {required JWTToken jwtToken,
      required bool isAuthenticated,
      required bool isLoading,
      required Option<Either<OnBoardFailure, Unit>>
          authTokenFailOrSuccessOption}) = _$_OnboardState;

  @override
  JWTToken get jwtToken;
  @override
  bool get isAuthenticated;
  @override
  bool get isLoading;
  @override
  Option<Either<OnBoardFailure, Unit>> get authTokenFailOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$OnboardStateCopyWith<_OnboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
