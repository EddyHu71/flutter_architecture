import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:bloc_flutters/domain/logout/logout_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_flutters/domain/logout/i_logout_repository.dart';

@LazySingleton(as : ILogoutRepository)
class LogoutRepository implements ILogoutRepository {
  @override
  Future<Either<LogoutFailure, Unit>> logout() async {
    // TODO: implement logout
    try {
      final deleted = await storageData.deleteAll();
      print(deleted);
      if (deleted) {
        print("Logout success");
        return right(unit);
      }
      print("Logout failed");
      return left(LogoutFailure.invalidLogout());
    } catch (e) {
      return left(LogoutFailure.failed());
    }
  }

}