// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _SubmitRegister submitRegister() {
    return const _SubmitRegister();
  }

  _RegisterEmailChanged onEmailChanged(String email) {
    return _RegisterEmailChanged(
      email,
    );
  }

  _RegisterPasswordChanged onPasswordChanged(String password) {
    return _RegisterPasswordChanged(
      password,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitRegister,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitRegister value) submitRegister,
    required TResult Function(_RegisterEmailChanged value) onEmailChanged,
    required TResult Function(_RegisterPasswordChanged value) onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$SubmitRegisterCopyWith<$Res> {
  factory _$SubmitRegisterCopyWith(
          _SubmitRegister value, $Res Function(_SubmitRegister) then) =
      __$SubmitRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$SubmitRegisterCopyWith<$Res> {
  __$SubmitRegisterCopyWithImpl(
      _SubmitRegister _value, $Res Function(_SubmitRegister) _then)
      : super(_value, (v) => _then(v as _SubmitRegister));

  @override
  _SubmitRegister get _value => super._value as _SubmitRegister;
}

/// @nodoc

class _$_SubmitRegister implements _SubmitRegister {
  const _$_SubmitRegister();

  @override
  String toString() {
    return 'RegisterEvent.submitRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SubmitRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitRegister,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return submitRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
  }) {
    return submitRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (submitRegister != null) {
      return submitRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitRegister value) submitRegister,
    required TResult Function(_RegisterEmailChanged value) onEmailChanged,
    required TResult Function(_RegisterPasswordChanged value) onPasswordChanged,
  }) {
    return submitRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
  }) {
    return submitRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (submitRegister != null) {
      return submitRegister(this);
    }
    return orElse();
  }
}

abstract class _SubmitRegister implements RegisterEvent {
  const factory _SubmitRegister() = _$_SubmitRegister;
}

/// @nodoc
abstract class _$RegisterEmailChangedCopyWith<$Res> {
  factory _$RegisterEmailChangedCopyWith(_RegisterEmailChanged value,
          $Res Function(_RegisterEmailChanged) then) =
      __$RegisterEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$RegisterEmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$RegisterEmailChangedCopyWith<$Res> {
  __$RegisterEmailChangedCopyWithImpl(
      _RegisterEmailChanged _value, $Res Function(_RegisterEmailChanged) _then)
      : super(_value, (v) => _then(v as _RegisterEmailChanged));

  @override
  _RegisterEmailChanged get _value => super._value as _RegisterEmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_RegisterEmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterEmailChanged implements _RegisterEmailChanged {
  const _$_RegisterEmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.onEmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  _$RegisterEmailChangedCopyWith<_RegisterEmailChanged> get copyWith =>
      __$RegisterEmailChangedCopyWithImpl<_RegisterEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitRegister,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitRegister value) submitRegister,
    required TResult Function(_RegisterEmailChanged value) onEmailChanged,
    required TResult Function(_RegisterPasswordChanged value) onPasswordChanged,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _RegisterEmailChanged implements RegisterEvent {
  const factory _RegisterEmailChanged(String email) = _$_RegisterEmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$RegisterEmailChangedCopyWith<_RegisterEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterPasswordChangedCopyWith<$Res> {
  factory _$RegisterPasswordChangedCopyWith(_RegisterPasswordChanged value,
          $Res Function(_RegisterPasswordChanged) then) =
      __$RegisterPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$RegisterPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$RegisterPasswordChangedCopyWith<$Res> {
  __$RegisterPasswordChangedCopyWithImpl(_RegisterPasswordChanged _value,
      $Res Function(_RegisterPasswordChanged) _then)
      : super(_value, (v) => _then(v as _RegisterPasswordChanged));

  @override
  _RegisterPasswordChanged get _value =>
      super._value as _RegisterPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_RegisterPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterPasswordChanged implements _RegisterPasswordChanged {
  const _$_RegisterPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  _$RegisterPasswordChangedCopyWith<_RegisterPasswordChanged> get copyWith =>
      __$RegisterPasswordChangedCopyWithImpl<_RegisterPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitRegister,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitRegister,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitRegister value) submitRegister,
    required TResult Function(_RegisterEmailChanged value) onEmailChanged,
    required TResult Function(_RegisterPasswordChanged value) onPasswordChanged,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitRegister value)? submitRegister,
    TResult Function(_RegisterEmailChanged value)? onEmailChanged,
    TResult Function(_RegisterPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _RegisterPasswordChanged implements RegisterEvent {
  const factory _RegisterPasswordChanged(String password) =
      _$_RegisterPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$RegisterPasswordChangedCopyWith<_RegisterPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {required Email email,
      required Password password,
      required bool showErrorMessage,
      required bool isLoading,
      required bool isSubmitting,
      required Option<Either<RegisterFailure, RegisterModel>>
          authfailureOrSuccessOption}) {
    return _RegisterState(
      email: email,
      password: password,
      showErrorMessage: showErrorMessage,
      isLoading: isLoading,
      isSubmitting: isSubmitting,
      authfailureOrSuccessOption: authfailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<RegisterFailure, RegisterModel>>
      get authfailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      bool showErrorMessage,
      bool isLoading,
      bool isSubmitting,
      Option<Either<RegisterFailure, RegisterModel>>
          authfailureOrSuccessOption});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessage = freezed,
    Object? isLoading = freezed,
    Object? isSubmitting = freezed,
    Object? authfailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authfailureOrSuccessOption: authfailureOrSuccessOption == freezed
          ? _value.authfailureOrSuccessOption
          : authfailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegisterFailure, RegisterModel>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      bool showErrorMessage,
      bool isLoading,
      bool isSubmitting,
      Option<Either<RegisterFailure, RegisterModel>>
          authfailureOrSuccessOption});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessage = freezed,
    Object? isLoading = freezed,
    Object? isSubmitting = freezed,
    Object? authfailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authfailureOrSuccessOption: authfailureOrSuccessOption == freezed
          ? _value.authfailureOrSuccessOption
          : authfailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegisterFailure, RegisterModel>>,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.email,
      required this.password,
      required this.showErrorMessage,
      required this.isLoading,
      required this.isSubmitting,
      required this.authfailureOrSuccessOption});

  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool showErrorMessage;
  @override
  final bool isLoading;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<RegisterFailure, RegisterModel>>
      authfailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, showErrorMessage: $showErrorMessage, isLoading: $isLoading, isSubmitting: $isSubmitting, authfailureOrSuccessOption: $authfailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authfailureOrSuccessOption,
                    authfailureOrSuccessOption) ||
                other.authfailureOrSuccessOption ==
                    authfailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      showErrorMessage, isLoading, isSubmitting, authfailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required Email email,
      required Password password,
      required bool showErrorMessage,
      required bool isLoading,
      required bool isSubmitting,
      required Option<Either<RegisterFailure, RegisterModel>>
          authfailureOrSuccessOption}) = _$_RegisterState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  bool get showErrorMessage;
  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  Option<Either<RegisterFailure, RegisterModel>> get authfailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
