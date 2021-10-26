
import 'package:bloc_flutters/domain/core/i_network_service.dart';
import 'package:bloc_flutters/domain/register/i_register_repository.dart';
import 'package:bloc_flutters/infrastructure/core/link_connect.dart';
import 'package:bloc_flutters/infrastructure/core/network_service.dart';
import 'package:fpdart/src/either.dart';
import 'package:bloc_flutters/model/register_response/register_model.dart';
import 'package:bloc_flutters/domain/register/register_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : IRegisterRepository)
class RegisterRepository implements IRegisterRepository {
  final INetworkService iNetworkService;
  RegisterRepository(this.iNetworkService);
  @override
  Future<Either<RegisterFailure, RegisterModel>> register(String email, String password) async {
    // TODO: implement register
    try {
      final Map<String, dynamic> request = {
        "email" : email,
        "password" : password,
      };
      var res = await iNetworkService.postHttp(path: UrlPath.register, content : request);
      if (res != null) {
        return right(RegisterModel.fromJson(res));
      }
      return left(RegisterFailure.invalidRegister());
    } catch (e) {
      return left(RegisterFailure.failed());
    }
  }

}