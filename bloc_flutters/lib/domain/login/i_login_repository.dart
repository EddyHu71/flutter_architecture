import 'package:bloc_flutters/domain/login/login_failure.dart';
import 'package:dartz/dartz.dart' hide IList;

abstract class ILoginRepository {
  Future<Either<LoginFailure, Unit>> login(
    String email,
    String password
  );
}