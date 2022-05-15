// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info_plus/device_info_plus.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../app/data/network_servise/dio_container.dart' as _i7;
import '../app/presentation/app_config.dart' as _i3;
import '../features/basket/domain/state/basket_cubit.dart' as _i4;
import '../features/login/data/auth_secure_storage.dart' as _i15;
import '../features/login/data/repository/login_network_repository.dart'
    as _i11;
import '../features/login/domain/repository/login_repository.dart' as _i10;
import '../features/login/domain/state/login_cubit.dart' as _i9;
import '../features/products_catalog/data/catalog_network_repository.dart'
    as _i17;
import '../features/products_catalog/domain/catalog_repository.dart' as _i16;
import '../features/products_catalog/domain/state/catalog_cubit.dart' as _i5;
import '../features/registration/data/repository/registration_network_repository.dart'
    as _i13;
import '../features/registration/domain/repository/registration_repository.dart'
    as _i12;
import 'register_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appConfigModule = _$AppConfigModule();
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppConfig>(() => appConfigModule.getAppConfig());
  gh.lazySingleton<_i4.BasketCubit>(() => _i4.BasketCubit());
  gh.lazySingleton<_i5.CatalogCubit>(() => _i5.CatalogCubit());
  gh.factory<_i6.DeviceInfoPlugin>(() => registerModule.deviceInfoPlugin);
  gh.lazySingleton<_i7.DioContainer>(
      () => _i7.DioContainer(get<_i3.AppConfig>()));
  gh.factory<_i8.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.lazySingleton<_i9.LoginCubit>(() => _i9.LoginCubit());
  gh.factory<_i10.LoginRepository>(() => _i11.LoginNetworkRepository());
  gh.factory<_i12.RegistrationRepository>(
      () => _i13.RegistrationNetworkRepository());
  await gh.factoryAsync<_i14.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i15.AuthTokenStorage>(
      () => _i15.AuthTokenLocalStorage(get<_i8.FlutterSecureStorage>()));
  gh.factory<_i16.CatalogRepository>(
      () => _i17.CatalogNetworkRepository(get<_i7.DioContainer>()));
  return get;
}

class _$AppConfigModule extends _i3.AppConfigModule {}

class _$RegisterModule extends _i18.RegisterModule {}
