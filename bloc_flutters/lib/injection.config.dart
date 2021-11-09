// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import 'application/auth/auth_bloc.dart' as _i11;
import 'application/login/login_bloc.dart' as _i24;
import 'application/profile/profil_bloc.dart' as _i20;
import 'application/view_data/view_data_bloc.dart' as _i21;
import 'domain/auth/i_auth_repository.dart' as _i5;
import 'domain/core/i_network_service.dart' as _i14;
import 'domain/core/i_storage.dart' as _i7;
import 'domain/login/i_login_repository.dart' as _i22;
import 'domain/profil/i_profil_repository.dart' as _i16;
import 'domain/view_data/i_view_repository.dart' as _i18;
import 'infrastructure/auth/auth_repository.dart' as _i6;
import 'infrastructure/core/auth_interceptor.dart' as _i12;
import 'infrastructure/core/network_service.dart' as _i15;
import 'infrastructure/core/register_module.dart' as _i25;
import 'infrastructure/core/storage.dart' as _i8;
import 'infrastructure/login/login_repository.dart' as _i23;
import 'infrastructure/profile/profile_repository.dart' as _i17;
import 'infrastructure/view_data/view_data_repository.dart' as _i19;
import 'simple_bloc_delegate.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.IAuthRepository>(() => _i6.AuthRepository());
  gh.lazySingleton<_i7.IStorage>(() => _i8.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
  gh.factory<_i10.SimpleBlocObserver>(
      () => _i10.SimpleBlocObserver(get<_i9.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i5.IAuthRepository>()));
  gh.factory<_i12.AuthInterceptor>(
      () => _i12.AuthInterceptor(get<_i7.IStorage>(), get<String>()));
  gh.lazySingleton<_i13.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i7.IStorage>()));
  gh.lazySingleton<_i14.INetworkService>(() => _i15.NetworkService(
      get<_i13.Dio>(), get<_i7.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i16.IProfilRepository>(
      () => _i17.ProfilRepository(get<_i14.INetworkService>()));
  gh.lazySingleton<_i18.IViewRepository>(
      () => _i19.ViewRepository(get<_i14.INetworkService>()));
  gh.factory<_i20.ProfilBloc>(
      () => _i20.ProfilBloc(get<_i16.IProfilRepository>()));
  gh.factory<_i21.ViewDataBloc>(
      () => _i21.ViewDataBloc(get<_i18.IViewRepository>()));
  gh.lazySingleton<_i22.ILoginRepository>(
      () => _i23.LoginRepository(get<_i14.INetworkService>()));
  gh.factory<_i24.LoginBloc>(
      () => _i24.LoginBloc(get<_i22.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i25.RegisterModule {}
