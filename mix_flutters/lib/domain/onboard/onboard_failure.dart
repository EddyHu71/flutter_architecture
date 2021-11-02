import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboard_failure.freezed.dart';

@freezed
class OnBoardFailure with _$OnBoardFailure {
  const factory OnBoardFailure.noInternet() = _NoInternet;
  const factory OnBoardFailure.invalidToken() = _InvalidToken;
  const factory OnBoardFailure.failed() = _Failed;
}
