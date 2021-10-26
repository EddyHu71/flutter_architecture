import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
class LoginFailure with _$LoginFailure {
  const factory LoginFailure.failed() = _Failed;
  const factory LoginFailure.invalidLogin() = _InvalidLogin;
  const factory LoginFailure.noInternet() = _NoInternet;
  const factory LoginFailure.serverError() = _ServerError;
}
