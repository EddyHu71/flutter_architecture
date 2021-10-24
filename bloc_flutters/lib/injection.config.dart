// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i11;
import 'package:fresh_dio/fresh_dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/login/login_bloc.dart' as _i18;
import 'domain/core/i_network_service.dart' as _i12;
import 'domain/core/i_storage.dart' as _i6;
import 'domain/login/i_login_repository.dart' as _i16;
import 'domain/view_data/i_view_repository.dart' as _i14;
import 'infrastructure/core/auth_interceptor.dart' as _i10;
import 'infrastructure/core/network_service.dart' as _i13;
import 'infrastructure/core/register_module.dart' as _i19;
import 'infrastructure/core/storage.dart' as _i7;
import 'infrastructure/login/login_repository.dart' as _i17;
import 'infrastructure/view_data/view_data_repository.dart' as _i15;
import 'simple_bloc_delegate.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.Fresh<dynamic>>(() => registerModule.fresh);
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.IStorage>(() => _i7.Storage(get<_i5.HiveInterface>()));
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.factory<_i9.SimpleBlocObserver>(
      () => _i9.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i10.AuthInterceptor>(
      () => _i10.AuthInterceptor(get<_i6.IStorage>(), get<String>()));
  gh.lazySingleton<_i11.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'),
      get<_i6.IStorage>(),
      get<_i4.Fresh<dynamic>>()));
  gh.lazySingleton<_i12.INetworkService>(() => _i13.NetworkService(
      get<_i11.Dio>(), get<_i6.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i14.IViewRepository>(
      () => _i15.ViewRepository(get<_i12.INetworkService>()));
  gh.lazySingleton<_i16.ILoginRepository>(
      () => _i17.LoginRepository(get<_i12.INetworkService>()));
  gh.factory<_i18.LoginBloc>(
      () => _i18.LoginBloc(get<_i16.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
