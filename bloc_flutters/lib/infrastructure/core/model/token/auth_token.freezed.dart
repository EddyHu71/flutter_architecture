// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return _AuthToken.fromJson(json);
}

/// @nodoc
class _$AuthTokenTearOff {
  const _$AuthTokenTearOff();

  _AuthToken call(
      {@JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'id_token') required String idToken,
      @JsonKey(name: 'expires_in') required int expiresIn,
      @JsonKey(name: 'refresh_expires_in') required int refreshExpiresIn,
      @JsonKey(name: 'refresh_token') required String refreshToken,
      @JsonKey(name: 'token_type') required String tokenType,
      @JsonKey(name: 'not-before-policy') required int notBeforePolicy,
      @JsonKey(name: 'session_state') required String sessionState,
      required String scope}) {
    return _AuthToken(
      accessToken: accessToken,
      idToken: idToken,
      expiresIn: expiresIn,
      refreshExpiresIn: refreshExpiresIn,
      refreshToken: refreshToken,
      tokenType: tokenType,
      notBeforePolicy: notBeforePolicy,
      sessionState: sessionState,
      scope: scope,
    );
  }

  AuthToken fromJson(Map<String, Object?> json) {
    return AuthToken.fromJson(json);
  }
}

/// @nodoc
const $AuthToken = _$AuthTokenTearOff();

/// @nodoc
mixin _$AuthToken {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_expires_in')
  int get refreshExpiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'not-before-policy')
  int get notBeforePolicy => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_state')
  String get sessionState => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenCopyWith<AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenCopyWith<$Res> {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) then) =
      _$AuthTokenCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'id_token') String idToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_expires_in') int refreshExpiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'not-before-policy') int notBeforePolicy,
      @JsonKey(name: 'session_state') String sessionState,
      String scope});
}

/// @nodoc
class _$AuthTokenCopyWithImpl<$Res> implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._value, this._then);

  final AuthToken _value;
  // ignore: unused_field
  final $Res Function(AuthToken) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? idToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshExpiresIn = freezed,
    Object? refreshToken = freezed,
    Object? tokenType = freezed,
    Object? notBeforePolicy = freezed,
    Object? sessionState = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiresIn: refreshExpiresIn == freezed
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      notBeforePolicy: notBeforePolicy == freezed
          ? _value.notBeforePolicy
          : notBeforePolicy // ignore: cast_nullable_to_non_nullable
              as int,
      sessionState: sessionState == freezed
          ? _value.sessionState
          : sessionState // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthTokenCopyWith<$Res> implements $AuthTokenCopyWith<$Res> {
  factory _$AuthTokenCopyWith(
          _AuthToken value, $Res Function(_AuthToken) then) =
      __$AuthTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'id_token') String idToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_expires_in') int refreshExpiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'not-before-policy') int notBeforePolicy,
      @JsonKey(name: 'session_state') String sessionState,
      String scope});
}

/// @nodoc
class __$AuthTokenCopyWithImpl<$Res> extends _$AuthTokenCopyWithImpl<$Res>
    implements _$AuthTokenCopyWith<$Res> {
  __$AuthTokenCopyWithImpl(_AuthToken _value, $Res Function(_AuthToken) _then)
      : super(_value, (v) => _then(v as _AuthToken));

  @override
  _AuthToken get _value => super._value as _AuthToken;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? idToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshExpiresIn = freezed,
    Object? refreshToken = freezed,
    Object? tokenType = freezed,
    Object? notBeforePolicy = freezed,
    Object? sessionState = freezed,
    Object? scope = freezed,
  }) {
    return _then(_AuthToken(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiresIn: refreshExpiresIn == freezed
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      notBeforePolicy: notBeforePolicy == freezed
          ? _value.notBeforePolicy
          : notBeforePolicy // ignore: cast_nullable_to_non_nullable
              as int,
      sessionState: sessionState == freezed
          ? _value.sessionState
          : sessionState // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthToken implements _AuthToken {
  _$_AuthToken(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'id_token') required this.idToken,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'refresh_expires_in') required this.refreshExpiresIn,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'not-before-policy') required this.notBeforePolicy,
      @JsonKey(name: 'session_state') required this.sessionState,
      required this.scope});

  factory _$_AuthToken.fromJson(Map<String, dynamic> json) =>
      _$$_AuthTokenFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'id_token')
  final String idToken;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'refresh_expires_in')
  final int refreshExpiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'not-before-policy')
  final int notBeforePolicy;
  @override
  @JsonKey(name: 'session_state')
  final String sessionState;
  @override
  final String scope;

  @override
  String toString() {
    return 'AuthToken(accessToken: $accessToken, idToken: $idToken, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn, refreshToken: $refreshToken, tokenType: $tokenType, notBeforePolicy: $notBeforePolicy, sessionState: $sessionState, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthToken &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshExpiresIn, refreshExpiresIn) ||
                other.refreshExpiresIn == refreshExpiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.notBeforePolicy, notBeforePolicy) ||
                other.notBeforePolicy == notBeforePolicy) &&
            (identical(other.sessionState, sessionState) ||
                other.sessionState == sessionState) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      idToken,
      expiresIn,
      refreshExpiresIn,
      refreshToken,
      tokenType,
      notBeforePolicy,
      sessionState,
      scope);

  @JsonKey(ignore: true)
  @override
  _$AuthTokenCopyWith<_AuthToken> get copyWith =>
      __$AuthTokenCopyWithImpl<_AuthToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthTokenToJson(this);
  }
}

abstract class _AuthToken implements AuthToken {
  factory _AuthToken(
      {@JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'id_token') required String idToken,
      @JsonKey(name: 'expires_in') required int expiresIn,
      @JsonKey(name: 'refresh_expires_in') required int refreshExpiresIn,
      @JsonKey(name: 'refresh_token') required String refreshToken,
      @JsonKey(name: 'token_type') required String tokenType,
      @JsonKey(name: 'not-before-policy') required int notBeforePolicy,
      @JsonKey(name: 'session_state') required String sessionState,
      required String scope}) = _$_AuthToken;

  factory _AuthToken.fromJson(Map<String, dynamic> json) =
      _$_AuthToken.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(name: 'refresh_expires_in')
  int get refreshExpiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'not-before-policy')
  int get notBeforePolicy;
  @override
  @JsonKey(name: 'session_state')
  String get sessionState;
  @override
  String get scope;
  @override
  @JsonKey(ignore: true)
  _$AuthTokenCopyWith<_AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}
