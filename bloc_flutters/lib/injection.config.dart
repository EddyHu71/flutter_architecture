// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i12;

import 'application/login/login_controller.dart' as _i29;
import 'application/profile/profile_bloc.dart' as _i24;
import 'application/register/register_bloc.dart' as _i25;
import 'application/view_data/view_data_bloc.dart' as _i26;
import 'domain/core/i_network_service.dart' as _i16;
import 'domain/core/i_storage.dart' as _i10;
import 'domain/login/i_login_repository.dart' as _i27;
import 'domain/logout/i_logout_repository.dart' as _i5;
import 'domain/onboard/i_onboard_repository.dart' as _i7;
import 'domain/profile/i_profile_repository.dart' as _i18;
import 'domain/register/i_register_repository.dart' as _i20;
import 'domain/view_data/i_view_repository.dart' as _i22;
import 'infrastructure/core/auth_interceptor.dart' as _i14;
import 'infrastructure/core/network_service.dart' as _i17;
import 'infrastructure/core/register_module.dart' as _i30;
import 'infrastructure/core/storage.dart' as _i11;
import 'infrastructure/core/storage_token.dart' as _i9;
import 'infrastructure/login/login_repository.dart' as _i28;
import 'infrastructure/logout/logout_repository.dart' as _i6;
import 'infrastructure/onboard/onboard_repository.dart' as _i8;
import 'infrastructure/profile/profile_repository.dart' as _i19;
import 'infrastructure/register/register_repository.dart' as _i21;
import 'infrastructure/view_data/view_data_repository.dart' as _i23;
import 'simple_bloc_delegate.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.ILogoutRepository>(() => _i6.LogoutRepository());
  gh.lazySingleton<_i7.IOnBoardRepository>(
      () => _i8.OnboardRepository(get<_i9.StorageToken>()));
  gh.lazySingleton<_i10.IStorage>(() => _i11.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i12.Logger>(() => registerModule.logger);
  gh.factory<_i13.SimpleBlocObserver>(
      () => _i13.SimpleBlocObserver(get<_i12.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i14.AuthInterceptor>(
      () => _i14.AuthInterceptor(get<_i10.IStorage>(), get<String>()));
  gh.lazySingleton<_i15.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i10.IStorage>()));
  gh.lazySingleton<_i16.INetworkService>(() => _i17.NetworkService(
      get<_i15.Dio>(), get<_i10.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i18.IProfileRepository>(
      () => _i19.ProfileRepository(get<_i16.INetworkService>()));
  gh.lazySingleton<_i20.IRegisterRepository>(
      () => _i21.RegisterRepository(get<_i16.INetworkService>()));
  gh.lazySingleton<_i22.IViewRepository>(
      () => _i23.ViewRepository(get<_i16.INetworkService>()));
  gh.factory<_i24.ProfileBloc>(
      () => _i24.ProfileBloc(get<_i18.IProfileRepository>()));
  gh.factory<_i25.RegisterBloc>(
      () => _i25.RegisterBloc(get<_i20.IRegisterRepository>()));
  gh.factory<_i26.ViewDataBloc>(
      () => _i26.ViewDataBloc(get<_i22.IViewRepository>()));
  gh.lazySingleton<_i27.ILoginRepository>(() =>
      _i28.LoginRepository(get<_i16.INetworkService>(), get<_i10.IStorage>()));
  gh.factory<_i29.LoginController>(
      () => _i29.LoginController(get<_i27.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i30.RegisterModule {}
