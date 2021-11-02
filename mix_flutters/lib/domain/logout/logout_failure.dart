import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_failure.freezed.dart';

@freezed
class LogoutFailure with _$LogoutFailure {
  const factory LogoutFailure.emptyToken() = _EmptyToken;
  const factory LogoutFailure.noInternet() = _NoInternet;
  const factory LogoutFailure.invalidLogout() = _InvalidLogout;
  const factory LogoutFailure.failed() = _Failed;
}
