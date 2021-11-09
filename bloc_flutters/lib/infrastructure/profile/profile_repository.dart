import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/profil/i_profil_repository.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/presentation/home/model/profile_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_flutters/domain/profil/profil_failure.dart';

@LazySingleton(as : IProfilRepository)
class ProfilRepository implements IProfilRepository {
  final INetworkService iNetworkService;
  ProfilRepository(this.iNetworkService);
  @override
  Future<Either<ProfilFailure, ProfileModel>> getProfile(String id) async {
    // TODO: implement getProfile
    try {
      print("Profile Repo executed");
      var profile = await iNetworkService.postHttp(path: UrlPath.getProfile+"2");
      if (profile != null) {
        print("Profile isn't null");
        print(profile);
        Map<String, dynamic> jsons = profile as Map<String, dynamic>;
        return right(ProfileModel.fromJson(jsons));
      }
      return left(ProfilFailure.failed());
    } catch (e) {
      print("Profile failed");
      print(e);
      return left(ProfilFailure.failed());
    }
  }

}