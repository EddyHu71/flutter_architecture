import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/i_network_service.dart';
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
  LoginRepository(this.networkService);

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
      if (res.token != null) {
        storageData.writeToken(res.token);
        storageData.readToken();
        print("Login success");
        return right(LoginModel.fromJson(res));
      }
      return left(LoginFailure.invalidLogin());
    } catch (e) {
      return left(LoginFailure.failed());
    }
  }
}
