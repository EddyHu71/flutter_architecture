// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i16;
import 'package:fresh_dio/fresh_dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/login/login_bloc.dart' as _i12;
import 'domain/core/i_network_service.dart' as _i15;
import 'domain/core/i_storage.dart' as _i9;
import 'domain/login/i_login_repository.dart' as _i6;
import 'infrastructure/core/auth_interceptor.dart' as _i14;
import 'infrastructure/core/network_service.dart' as _i8;
import 'infrastructure/core/register_module.dart' as _i17;
import 'infrastructure/core/storage.dart' as _i10;
import 'infrastructure/login/login_repository.dart' as _i7;
import 'simple_bloc_delegate.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.Fresh<dynamic>>(() => registerModule.fresh);
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.ILoginRepository>(
      () => _i7.LoginRepository(get<_i8.NetworkService>()));
  gh.lazySingleton<_i9.IStorage>(() => _i10.Storage(get<_i5.HiveInterface>()));
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(get<_i6.ILoginRepository>()));
  gh.factory<_i13.SimpleBlocObserver>(
      () => _i13.SimpleBlocObserver(get<_i11.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i14.AuthInterceptor>(
      () => _i14.AuthInterceptor(get<_i9.IStorage>(), get<String>()));
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'),
      get<_i9.IStorage>(),
      get<_i4.Fresh<dynamic>>()));
  gh.lazySingleton<_i15.INetworkService>(() => _i8.NetworkService(
      get<_i16.Dio>(), get<_i9.IStorage>(), get<_i3.Connectivity>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
