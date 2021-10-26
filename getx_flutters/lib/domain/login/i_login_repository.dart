import 'package:fpdart/fpdart.dart';
import 'package:getx_flutters/domain/login/login_failure.dart';
import 'package:getx_flutters/model/login_response/login_model.dart';

abstract class ILoginRepository {
  Future<Either<LoginFailure, LoginModel>> login(String email, String password);
}