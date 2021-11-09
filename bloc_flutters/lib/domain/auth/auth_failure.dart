import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.failed() = _Failed;
  const factory AuthFailure.invalidToken() = _InvalidToken;
  const factory AuthFailure.noInternet() = _NoInternet;
  const factory AuthFailure.serverError() = _ServerError;
}
