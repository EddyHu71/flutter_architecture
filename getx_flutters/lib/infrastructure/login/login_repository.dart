
import 'package:fpdart/src/either.dart';
import 'package:getx_flutters/domain/core/i_network_service.dart';
import 'package:getx_flutters/domain/login/i_login_repository.dart';
import 'package:getx_flutters/infrastructure/core/link_connect.dart';
import 'package:getx_flutters/infrastructure/core/storage_token.dart';
import 'package:getx_flutters/model/login_response/login_model.dart';
import 'package:getx_flutters/domain/login/login_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : ILoginRepository)
class LoginRepository implements ILoginRepository {
  final INetworkService networkService;
  LoginRepository(this.networkService);
  
  @override
  Future<Either<LoginFailure, LoginModel>> login(String email, String password) async {
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
        storageData.writeToken(json['token']);
        print(storageData.readToken());
        print("Login success");
        return right(LoginModel.fromJson(json));
      }
      return left(LoginFailure.invalidLogin());
    } catch (e) {
      return left(LoginFailure.failed());
    }
  }

}