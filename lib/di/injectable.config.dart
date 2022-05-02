// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info_plus/device_info_plus.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../app/data/network_servise/dio_container.dart' as _i6;
import '../app/presentation/app_config.dart' as _i3;
import '../features/login/data/auth_secure_storage.dart' as _i14;
import '../features/login/data/repository/login_network_repository.dart'
    as _i10;
import '../features/login/domain/repository/login_repository.dart' as _i9;
import '../features/login/domain/state/login_cubit.dart' as _i8;
import '../features/products_catalog/data/catalog_network_repository.dart'
    as _i16;
import '../features/products_catalog/domain/catalog_repository.dart' as _i15;
import '../features/products_catalog/domain/state/catalog_cubit.dart' as _i4;
import '../features/registration/data/repository/registration_network_repository.dart'
    as _i12;
import '../features/registration/domain/repository/registration_repository.dart'
    as _i11;
import 'register_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appConfigModule = _$AppConfigModule();
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppConfig>(() => appConfigModule.getAppConfig());
  gh.lazySingleton<_i4.CatalogCubit>(() => _i4.CatalogCubit());
  gh.factory<_i5.DeviceInfoPlugin>(() => registerModule.deviceInfoPlugin);
  gh.lazySingleton<_i6.DioContainer>(
      () => _i6.DioContainer(get<_i3.AppConfig>()));
  gh.factory<_i7.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.lazySingleton<_i8.LoginCubit>(() => _i8.LoginCubit());
  gh.factory<_i9.LoginRepository>(() => _i10.LoginNetworkRepository());
  gh.factory<_i11.RegistrationRepository>(
      () => _i12.RegistrationNetworkRepository());
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i14.AuthTokenStorage>(
      () => _i14.AuthTokenLocalStorage(get<_i7.FlutterSecureStorage>()));
  gh.factory<_i15.CatalogRepository>(
      () => _i16.CatalogNetworkRepository(get<_i6.DioContainer>()));
  return get;
}

class _$AppConfigModule extends _i3.AppConfigModule {}

class _$RegisterModule extends _i17.RegisterModule {}
