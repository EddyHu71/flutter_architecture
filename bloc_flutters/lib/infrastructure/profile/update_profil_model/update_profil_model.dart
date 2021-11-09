import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profil_model.freezed.dart';
part 'update_profil_model.g.dart';

@freezed
class UpdateProfilModel with _$UpdateProfilModel {
  factory UpdateProfilModel({
    String? name,
    String? job,
    String? updatedAt,
  }) = _UpdateProfilModel;

  factory UpdateProfilModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfilModelFromJson(json);
}
