// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info_plus/device_info_plus.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../app/data/network_servise/dio_container.dart' as _i8;
import '../app/presentation/app_config.dart' as _i4;
import '../features/adreses_page/domain/state/addresses_cubit.dart' as _i3;
import '../features/basket/domain/state/basket_cubit.dart' as _i5;
import '../features/login/data/auth_secure_storage.dart' as _i22;
import '../features/login/data/repository/login_network_repository.dart'
    as _i12;
import '../features/login/domain/repository/login_repository.dart' as _i11;
import '../features/login/domain/state/login_cubit.dart' as _i10;
import '../features/person_data/presentation/data/person_data_repository.dart'
    as _i14;
import '../features/person_data/presentation/domain/person_repository.dart'
    as _i13;
import '../features/product_page/data/product_details_network_repository.dart'
    as _i16;
import '../features/product_page/domain/product_details_repository.dart'
    as _i15;
import '../features/products_catalog/data/catalog_network_repository.dart'
    as _i24;
import '../features/products_catalog/domain/catalog_repository.dart' as _i23;
import '../features/products_catalog/domain/state/catalog_cubit.dart' as _i6;
import '../features/registration/data/repository/registration_network_repository.dart'
    as _i18;
import '../features/registration/domain/repository/registration_repository.dart'
    as _i17;
import '../features/search/data/searcher_network_repository.dart' as _i20;
import '../features/search/domain/searcher_repository.dart' as _i19;
import 'register_module.dart' as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appConfigModule = _$AppConfigModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AddressesCubit>(() => _i3.AddressesCubit());
  gh.factory<_i4.AppConfig>(() => appConfigModule.getAppConfig());
  gh.lazySingleton<_i5.BasketCubit>(() => _i5.BasketCubit());
  gh.lazySingleton<_i6.CatalogCubit>(() => _i6.CatalogCubit());
  gh.factory<_i7.DeviceInfoPlugin>(() => registerModule.deviceInfoPlugin);
  gh.lazySingleton<_i8.DioContainer>(
      () => _i8.DioContainer(get<_i4.AppConfig>()));
  gh.factory<_i9.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.lazySingleton<_i10.LoginCubit>(() => _i10.LoginCubit());
  gh.factory<_i11.LoginRepository>(
      () => _i12.LoginNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i13.PersonRepository>(
      () => _i14.PersonNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i15.ProductDetailsRepository>(
      () => _i16.ProductDetailsNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i17.RegistrationRepository>(
      () => _i18.RegistrationNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i19.SearcherRepository>(
      () => _i20.SearcherNetworkRepository(get<_i8.DioContainer>()));
  await gh.factoryAsync<_i21.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i22.AuthTokenStorage>(
      () => _i22.AuthTokenLocalStorage(get<_i9.FlutterSecureStorage>()));
  gh.factory<_i23.CatalogRepository>(
      () => _i24.CatalogNetworkRepository(get<_i8.DioContainer>()));
  return get;
}

class _$AppConfigModule extends _i4.AppConfigModule {}

class _$RegisterModule extends _i25.RegisterModule {}
