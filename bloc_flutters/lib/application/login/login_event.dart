part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {

  const factory LoginEvent.validatedEmail(String email) = _ValidatedEmail;
  const factory LoginEvent.signIn() = _SignIn;
  const factory LoginEvent.onEmailChanged(String email) = _EmailChanged;
  const factory LoginEvent.onPasswordChanged(String password) =
      _PasswordChanged;
}
