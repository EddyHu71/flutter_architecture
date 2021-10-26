part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.submitRegister() = _SubmitRegister;
  const factory RegisterEvent.onEmailChanged(String email) = _RegisterEmailChanged;
  const factory RegisterEvent.onPasswordChanged(String password) = _RegisterPasswordChanged;
}
