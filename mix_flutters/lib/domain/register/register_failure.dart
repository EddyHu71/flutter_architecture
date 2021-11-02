import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_failure.freezed.dart';

@freezed
class RegisterFailure with _$RegisterFailure {
  const factory RegisterFailure.failed() = _Failed;
  const factory RegisterFailure.invalidRegister() = _InvalidRegister;
  const factory RegisterFailure.noInternet() = _NoInternet;
  const factory RegisterFailure.serverError() = _ServerError;
}
