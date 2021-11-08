import 'package:bloc_flutters/domain/auth/auth_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> authToken();
}