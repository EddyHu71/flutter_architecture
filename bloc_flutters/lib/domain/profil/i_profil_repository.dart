import 'package:bloc_flutters/domain/profil/profil_failure.dart';
import 'package:bloc_flutters/infrastructure/profile/update_profil_model/update_profil_model.dart';
import 'package:bloc_flutters/presentation/home/model/profile_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProfilRepository {
  Future<Either<ProfilFailure, ProfileModel>> getProfile(String id);
  Future<Either<ProfilFailure, Unit>> logout();
  Future<Either<ProfilFailure, Unit>> updateProfile(String name, String job);
}
