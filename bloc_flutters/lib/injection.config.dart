// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/login/login_bloc.dart' as _i15;
import 'domain/core/i_network_service.dart' as _i11;
import 'domain/core/i_storage.dart' as _i4;
import 'domain/login/i_login_repository.dart' as _i13;
import 'infrastructure/core/auth_interceptor.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i12;
import 'infrastructure/core/register_module.dart' as _i16;
import 'infrastructure/core/storage.dart' as _i5;
import 'infrastructure/login/login_repository.dart' as _i14;
import 'simple_bloc_delegate.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.IStorage>(() => _i5.Storage(get<_i6.HiveInterface>()));
  gh.factory<_i7.SimpleBlocObserver>(
      () => _i7.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i9.AuthInterceptor>(
      () => _i9.AuthInterceptor(get<_i4.IStorage>(), get<String>()));
  gh.lazySingleton<_i10.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i11.INetworkService>(() => _i12.NetworkService(
      get<_i10.Dio>(), get<_i4.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i13.ILoginRepository>(
      () => _i14.LoginRepository(get<_i11.INetworkService>()));
  gh.factory<_i15.LoginBloc>(
      () => _i15.LoginBloc(get<_i13.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
