import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/onboard/i_onboard_repository.dart';
import 'package:bloc_flutters/infrastructure/core/storage_token.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:bloc_flutters/domain/onboard/onboard_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : IOnBoardRepository)
class OnboardRepository implements IOnBoardRepository {
  final StorageToken storageToken;
  OnboardRepository(this.storageToken);
  @override
  Future<Either<OnBoardFailure, Unit>> auth(String token) async {
    // TODO: implement auth
    try {
      var tokens = await storageData.readToken();
      if (tokens.toString() == tokens) {
        return right(unit);
      }
      return left(OnBoardFailure.invalidToken());
    } catch (e) {
      return left(OnBoardFailure.failed());
    }
  }

}