// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

import 'application/login/login_bloc.dart' as _i17;
import 'domain/core/i_network_service.dart' as _i11;
import 'domain/core/i_storage.dart' as _i5;
import 'domain/login/i_login_repository.dart' as _i15;
import 'domain/view_data/i_view_repository.dart' as _i13;
import 'infrastructure/core/auth_interceptor.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i12;
import 'infrastructure/core/register_module.dart' as _i18;
import 'infrastructure/core/storage.dart' as _i6;
import 'infrastructure/login/login_repository.dart' as _i16;
import 'infrastructure/view_data/view_data_repository.dart' as _i14;
import 'simple_bloc_delegate.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.IStorage>(() => _i6.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
  gh.factory<_i8.SimpleBlocObserver>(
      () => _i8.SimpleBlocObserver(get<_i7.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i9.AuthInterceptor>(
      () => _i9.AuthInterceptor(get<_i5.IStorage>(), get<String>()));
  gh.lazySingleton<_i10.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i5.IStorage>()));
  gh.lazySingleton<_i11.INetworkService>(() => _i12.NetworkService(
      get<_i10.Dio>(), get<_i5.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i13.IViewRepository>(
      () => _i14.ViewRepository(get<_i11.INetworkService>()));
  gh.lazySingleton<_i15.ILoginRepository>(
      () => _i16.LoginRepository(get<_i11.INetworkService>()));
  gh.factory<_i17.LoginBloc>(
      () => _i17.LoginBloc(get<_i15.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
