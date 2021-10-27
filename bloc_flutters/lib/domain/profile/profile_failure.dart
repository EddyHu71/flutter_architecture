import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.noData() = _NoData;
  const factory ProfileFailure.noInternet() = _NoInternet;
  const factory ProfileFailure.failed() = _Failed;
}
