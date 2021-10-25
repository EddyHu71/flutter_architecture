import 'package:bloc_flutters/domain/core/failures.dart';
import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/view_data/i_view_repository.dart';
import 'package:bloc_flutters/domain/view_data/view_failure.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
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
      if (res.data != null) {
        Map<String, dynamic> jsons = res.data as Map<String, dynamic>;
        return right(ViewData.fromJson(jsons));
      }
      return left(const ViewFailure.failed());
    } catch (e) {
      return left(const ViewFailure.noInternet());
    }
  }
}
