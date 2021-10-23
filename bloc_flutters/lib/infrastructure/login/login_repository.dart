import 'package:bloc_flutters/domain/login/i_login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepository)

class LoginRepository implements ILoginRepository {
  @override
  Future<Either<LoginFailure, Unit>> login(String email, String password) async {
    // TODO: implement login
    // throw UnimplementedError();

    try {
      if (email == "admin" && password == "email") {
        print("Login success");
        return right(unit);
      }
      return left(LoginFailure.invalidLogin());
    } catch (e) {
      return left(LoginFailure.failed());
    }
  }
}