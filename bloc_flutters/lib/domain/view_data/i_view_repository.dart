import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:dartz/dartz.dart';

abstract class IViewRepository {
  Future<Either<ValueFailure, ViewData>> getData();
}
