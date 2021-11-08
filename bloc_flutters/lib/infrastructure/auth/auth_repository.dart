import 'package:bloc_flutters/infrastructure/core/storage_name.dart';
import 'package:code_id_flutter/code_services/code_services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:bloc_flutters/domain/auth/auth_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_flutters/domain/auth/i_auth_repository.dart';

@LazySingleton(as : IAuthRepository)
class AuthRepository implements IAuthRepository {
  
  @override
  Future<Either<AuthFailure, Unit>> authToken() async {
    // TODO: implement authToken
    try {
      print("Auth Repo executed");
      await Storage.openBox(StorageName.box_name);
      var tokens = Storage.getData(key: "token");
      print("Token in Auth Repository");
      print(tokens);
      if (tokens != null) {
        print("Token isn't null");
        return right(unit);
      }
      return left(AuthFailure.failed());
    } catch (e) {
      print("Auth Failed");
      print(e);
      return left(AuthFailure.failed());
    }
  }

}