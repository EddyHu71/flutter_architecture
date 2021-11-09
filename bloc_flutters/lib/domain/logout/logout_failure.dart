import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_failure.freezed.dart';

@freezed
class LogoutFailure with _$LogoutFailure {
  const factory LogoutFailure.noData() = _NoData;
  const factory LogoutFailure.noInternet() = _NoInternet;
  const factory LogoutFailure.failed() = _Failed;
}
