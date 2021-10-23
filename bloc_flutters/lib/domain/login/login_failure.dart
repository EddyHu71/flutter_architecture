import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
abstract class LoginFailure<T> with _$LoginFailure {
  
  const factory LoginFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory LoginFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory LoginFailure.invalidPassword({
    required T failedValue
  }) = InvalidPassword<T>;

  const factory LoginFailure.invalidLogin() = _InvalidLogin;

   const factory LoginFailure.failed() = _Failed;
}