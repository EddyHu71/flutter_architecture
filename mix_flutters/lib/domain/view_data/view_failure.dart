import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_failure.freezed.dart';

@freezed
class ViewFailure with _$ViewFailure {
  const factory ViewFailure.noData() = _NoData;
  const factory ViewFailure.noInternet() = _NoInternet;
  const factory ViewFailure.failed() = _Failed;
}
