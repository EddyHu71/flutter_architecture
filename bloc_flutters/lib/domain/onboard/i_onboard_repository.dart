import 'package:bloc_flutters/domain/onboard/onboard_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IOnBoardRepository {

  Future<Either<OnBoardFailure, Unit>> auth();
}
