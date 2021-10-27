import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/profile/i_profile_repository.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/model/profile/detail_profile/profile_model.dart';
import 'package:bloc_flutters/model/profile/update_profile/update_profile.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:bloc_flutters/domain/profile/profile_failure.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final INetworkService networkService;
  ProfileRepository(this.networkService);

  @override
  Future<Either<ProfileFailure, ProfileModel>> getProfileData(
      String id) async {
    // TODO: implement getProfileData
    var storedtoken = await storageData.getToken();
    print("Stored Token " + storedtoken.toString());
      try {
        if (storedtoken != null) {
            var res = await networkService.getHttp(
              path: UrlPath.getProfileData + "/${id}");
          print("Res getProfile");
          print(res);
          if (res != null) {
            print("Right Getprofile");
            return right(ProfileModel.fromJson(res));
          }
          print("Left getProfile");
          return left(ProfileFailure.failed());
          } else {
            // Get.offNamedUntil(Routers.login, (route) => false);
            return left(ProfileFailure.invalidToken());
          }
        } catch (e) {
          return left(ProfileFailure.failed());
        }

  }

  @override
  Future<Either<ProfileFailure, UpdateProfile>> updateProfile(
      String name, String job) async {
    // TODO: implement updateProfile
    try {
      final Map<String, dynamic> req = {
        "name": name,
        "job": job,
      };
      var res = await networkService.postHttp(
          path: UrlPath.updateProfile, content: req);
      if (res != null) {
        return right(UpdateProfile.fromJson(res));
      }
      return left(ProfileFailure.failed());
    } catch (E) {
      return left(ProfileFailure.failed());
    }
  }
}
