// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import 'application/login/login_controller.dart' as _i26;
import 'application/profile/profile_bloc.dart' as _i21;
import 'application/register/register_bloc.dart' as _i22;
import 'application/view_data/view_data_bloc.dart' as _i23;
import 'domain/core/i_network_service.dart' as _i13;
import 'domain/core/i_storage.dart' as _i7;
import 'domain/login/i_login_repository.dart' as _i24;
import 'domain/logout/i_logout_repository.dart' as _i5;
import 'domain/profile/i_profile_repository.dart' as _i15;
import 'domain/register/i_register_repository.dart' as _i17;
import 'domain/view_data/i_view_repository.dart' as _i19;
import 'infrastructure/core/auth_interceptor.dart' as _i11;
import 'infrastructure/core/network_service.dart' as _i14;
import 'infrastructure/core/register_module.dart' as _i27;
import 'infrastructure/core/storage.dart' as _i8;
import 'infrastructure/login/login_repository.dart' as _i25;
import 'infrastructure/logout/logout_repository.dart' as _i6;
import 'infrastructure/profile/profile_repository.dart' as _i16;
import 'infrastructure/register/register_repository.dart' as _i18;
import 'infrastructure/view_data/view_data_repository.dart' as _i20;
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
  gh.lazySingleton<_i5.ILogoutRepository>(() => _i6.LogoutRepository());
  gh.lazySingleton<_i7.IStorage>(() => _i8.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
  gh.factory<_i10.SimpleBlocObserver>(
      () => _i10.SimpleBlocObserver(get<_i9.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i11.AuthInterceptor>(
      () => _i11.AuthInterceptor(get<_i7.IStorage>(), get<String>()));
  gh.lazySingleton<_i12.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i7.IStorage>()));
  gh.lazySingleton<_i13.INetworkService>(() => _i14.NetworkService(
      get<_i12.Dio>(), get<_i7.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i15.IProfileRepository>(
      () => _i16.ProfileRepository(get<_i13.INetworkService>()));
  gh.lazySingleton<_i17.IRegisterRepository>(
      () => _i18.RegisterRepository(get<_i13.INetworkService>()));
  gh.lazySingleton<_i19.IViewRepository>(
      () => _i20.ViewRepository(get<_i13.INetworkService>()));
  gh.factory<_i21.ProfileBloc>(
      () => _i21.ProfileBloc(get<_i15.IProfileRepository>()));
  gh.factory<_i22.RegisterBloc>(
      () => _i22.RegisterBloc(get<_i17.IRegisterRepository>()));
  gh.factory<_i23.ViewDataBloc>(
      () => _i23.ViewDataBloc(get<_i19.IViewRepository>()));
  gh.lazySingleton<_i24.ILoginRepository>(() =>
      _i25.LoginRepository(get<_i13.INetworkService>(), get<_i7.IStorage>()));
  gh.factory<_i26.LoginController>(
      () => _i26.LoginController(get<_i24.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}
