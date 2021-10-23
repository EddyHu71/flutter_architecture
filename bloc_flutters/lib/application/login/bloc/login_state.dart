part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Password password,
    required bool showErrorMessage,
    required bool isLoading,
    required bool isSubmitting,
    required Option<Either<LoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
    email: Email(''), 
    password: Password(''), 
    showErrorMessage: false, 
    isLoading: false, 
    isSubmitting: false, 
    authFailureOrSuccessOption: none()
    );
}
