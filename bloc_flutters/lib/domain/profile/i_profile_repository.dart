import 'package:bloc_flutters/domain/profile/profile_failure.dart';
import 'package:bloc_flutters/model/profile/detail_profile/profile_model.dart';
import 'package:bloc_flutters/model/profile/update_profile/update_profile.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, ProfileModel>> getProfileData(
      String id);
  Future<Either<ProfileFailure, UpdateProfile>> updateProfile(
      String name, String job);

  Future<Either<ProfileFailure, Unit>> logout();
}
