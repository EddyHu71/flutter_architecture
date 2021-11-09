import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/profil/i_profil_repository.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/infrastructure/core/storage_name.dart';
import 'package:bloc_flutters/infrastructure/profile/update_profil_model/update_profil_model.dart';
import 'package:bloc_flutters/presentation/home/model/data.dart';
import 'package:bloc_flutters/presentation/home/model/profile_model.dart';
import 'package:code_id_flutter/code_services/code_services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_flutters/domain/profil/profil_failure.dart';

@LazySingleton(as: IProfilRepository)
class ProfilRepository implements IProfilRepository {
  final INetworkService iNetworkService;
  ProfilRepository(this.iNetworkService);
  @override
  Future<Either<ProfilFailure, ProfileModel>> getProfile(String id) async {
    // TODO: implement getProfile
    try {
      print("Profile Repo executed");
      var res = await iNetworkService.getHttp(path: UrlPath.getProfile + "1");
      if (res != null) {
        print("Profile isn't null");
        print(res);
        Map<String, dynamic> jsons = res as Map<String, dynamic>;
        print("JSON Value Profile");
        print(ProfileModel.fromJson(jsons));
        return right(ProfileModel.fromJson(jsons));
      }
      return left(ProfilFailure.failed());
    } catch (e) {
      print("Profile failed");
      print(e);
      return left(ProfilFailure.failed());
    }
  }

  @override
  Future<Either<ProfilFailure, Unit>> logout() async {
    // TODO: implement logout
    try {
      await Storage.openBox(StorageName.box_name);
      await Storage.delete(key: "token");
      print("Logout executed");
      return right(unit);
    } catch (e) {
      print(e);
      return left(ProfilFailure.failed());
    }
  }

  @override
  Future<Either<ProfilFailure, Unit>> updateProfile(String name, String job) async {
    // TODO: implement updateProfile
      try {
        final Map<String, dynamic> request = {
          "name": name,
          "job": job,
        };
        print("Update profile executed");
        var res = await iNetworkService.postHttp(path: UrlPath.updateProfile+"1", content: request);
        if (res != null) {
          print("Update profile success");
          return right(unit);
        }
        return left(ProfilFailure.failed());
      } catch (e) {
        print(e);
        return left(ProfilFailure.failed());
      }
  }


}
