// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import 'domain/login/i_login_repository.dart' as _i3;
import 'infrastructure/login/login_repository.dart' as _i4;
import 'simple_bloc_delegate.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ILoginRepository>(() => _i4.LoginRepository());
  gh.factory<_i5.SimpleBlocObserver>(
      () => _i5.SimpleBlocObserver(get<_i6.Logger>()));
  return get;
}
