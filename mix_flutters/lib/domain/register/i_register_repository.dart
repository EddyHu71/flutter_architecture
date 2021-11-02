import 'package:bloc_flutters/domain/register/register_failure.dart';
import 'package:bloc_flutters/model/register_response/register_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IRegisterRepository {
  Future<Either<RegisterFailure, RegisterModel>> register(
      String email, String password);
}
