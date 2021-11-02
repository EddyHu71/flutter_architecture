import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile.freezed.dart';
part 'update_profile.g.dart';

@freezed
class UpdateProfile with _$UpdateProfile {
  factory UpdateProfile({
    String? name,
    String? job,
    String? updatedAt,
  }) = _UpdateProfile;

  factory UpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileFromJson(json);
}
