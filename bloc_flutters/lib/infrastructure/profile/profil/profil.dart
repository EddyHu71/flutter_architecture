import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'support.dart';

part 'profil.freezed.dart';
part 'profil.g.dart';

@freezed
class Profil with _$Profil {
  factory Profil({
    Data? data,
    Support? support,
  }) = _Profil;

  factory Profil.fromJson(Map<String, dynamic> json) => _$ProfilFromJson(json);
}
