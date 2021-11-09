import 'package:freezed_annotation/freezed_annotation.dart';

part 'profil_failure.freezed.dart';

@freezed
class ProfilFailure with _$ProfilFailure {
  const factory ProfilFailure.noData() = _NoData;
  const factory ProfilFailure.noInternet() = _NoInternet;
  const factory ProfilFailure.failed() = _Failed;
}
