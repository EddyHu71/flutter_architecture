import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/core/i_storage.dart';
import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final INetworkService networkService;
  final IStorage iStorage;
  LoginRepository(this.networkService, this.iStorage);
  @override
  Future<Either<LoginFailure, LoginModel>> login(
      String email, String password) async {
    // TODO: implement login
    // throw UnimplementedError();
    try {
      final Map<String, dynamic> request = {
        "email": email,
        "password": password,
      };
      var res =
          await networkService.postHttp(path: UrlPath.login, content: request);
      print("Repo Login executed");
      print(res);
      if (res != null) {
        Map<String, dynamic> json = res as Map<String, dynamic>;
        // storage
        
        // storageData.writeToken(json['token']);
        // print(storageData.readToken());
        iStorage.putString(key: "token", value: json['token']);
        print("Get Data");
        print(iStorage.getData());
        print("Login success");
        return right(LoginModel.fromJson(json));
      }
      return left(LoginFailure.invalidLogin());
    } catch (e) {
      return left(LoginFailure.failed());
    }
  }
}
