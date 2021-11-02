
import 'package:bloc_flutters/domain/logout/logout_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class ILogoutRepository {
  Future<Either<LogoutFailure, Unit>> logout();
}