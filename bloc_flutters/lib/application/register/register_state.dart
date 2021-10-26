part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required Email email,
    required Password password,
    required bool showErrorMessage,
    required bool isLoading,
    required bool isSubmitting,
    required Option<Either<RegisterFailure, RegisterModel>>
        authfailureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
    email: Email(''), 
    password: Password(''),
    showErrorMessage: false,
    isLoading: false,
    isSubmitting: false,
    authfailureOrSuccessOption: none(),
    );
}
