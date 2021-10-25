import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class ILoginRepository {
  Future<Either<LoginFailure, LoginModel>> login(String email, String password);
}
