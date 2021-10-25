import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final INetworkService networkService;
  LoginRepository(this.networkService);
  @override
  Future<Either<ValueFailure, LoginModel>> login(
      String email, String password) async {
    // TODO: implement login
    // throw UnimplementedError();
    try {
      final Map<String, dynamic> request = {
        "email" : email,
        "password" : password,
      };
      var res = await networkService.postHttp(path: UrlPath.login, content: request);
      print("Repo Login executed");
      print(res);
      if (res.token != null) {
        print("Login success");
        return right(LoginModel.fromJson(res));
      }
      return left(ValueFailure.failed());
    } catch (e) {
      return left(ValueFailure.failed());
    }
  }
}
