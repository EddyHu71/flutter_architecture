import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/model/response/login_model.dart';
import 'package:dartz/dartz.dart' hide IList;

abstract class ILoginRepository {
  Future<Either<ValueFailure, LoginModel>> login(
    String email,
    String password
  );
}