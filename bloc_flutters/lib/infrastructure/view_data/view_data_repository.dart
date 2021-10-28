import 'package:bloc_flutters/domain/core/exceptions/exceptions.dart';
import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/view_data/i_view_repository.dart';
import 'package:bloc_flutters/domain/view_data/view_failure.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/infrastructure/core/network_service.dart';
import 'package:bloc_flutters/model/view_data/view_data.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IViewRepository)
class ViewRepository implements IViewRepository {
  ViewRepository(this.iNetworkService);
  final INetworkService iNetworkService;
  @override
  Future<Either<ViewFailure, ViewData>> getData() async {
    // TODO: implement getData
    try {
      var res = await iNetworkService.getHttp(path: UrlPath.getData);
      if (res != null) {
        Map<String, dynamic> jsons = res as Map<String, dynamic>;
        print(jsons);
        return right(ViewData.fromJson(jsons));
      }
      print("Not found");
      return left(const ViewFailure.noData());
    } on NetworkException {
      return left(ViewFailure.noInternet());
    } catch (e) {
      return left(const ViewFailure.failed());
    }
  }
}
