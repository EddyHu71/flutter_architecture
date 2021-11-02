import 'package:bloc_flutters/domain/view_data/view_failure.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:fpdart/fpdart.dart';

abstract class IViewRepository {
  Future<Either<ViewFailure, ViewData>> getData();
}
