import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'support.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    Data? data,
    Support? support,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
