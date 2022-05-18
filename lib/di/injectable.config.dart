// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info_plus/device_info_plus.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import '../app/data/network_servise/dio_container.dart' as _i8;
import '../app/presentation/app_config.dart' as _i4;
import '../features/adreses_page/domain/state/addresses_cubit.dart' as _i3;
import '../features/basket/data/network_basket_repository.dart' as _i27;
import '../features/basket/domain/basket_repository.dart' as _i26;
import '../features/basket/domain/state/basket_cubit.dart' as _i5;
import '../features/favoite/data/favorite_network_repository.dart' as _i10;
import '../features/favoite/domain/favorite_product_repository.dart' as _i9;
import '../features/favoite/domain/state/favorite_products_cubit.dart' as _i11;
import '../features/login/data/auth_secure_storage.dart' as _i25;
import '../features/login/data/repository/login_network_repository.dart'
    as _i15;
import '../features/login/domain/repository/login_repository.dart' as _i14;
import '../features/login/domain/state/login_cubit.dart' as _i13;
import '../features/person_data/presentation/data/person_data_repository.dart'
    as _i17;
import '../features/person_data/presentation/domain/person_repository.dart'
    as _i16;
import '../features/product_page/data/product_details_network_repository.dart'
    as _i19;
import '../features/product_page/domain/product_details_repository.dart'
    as _i18;
import '../features/products_catalog/data/catalog_network_repository.dart'
    as _i29;
import '../features/products_catalog/domain/catalog_repository.dart' as _i28;
import '../features/products_catalog/domain/state/catalog_cubit.dart' as _i6;
import '../features/registration/data/repository/registration_network_repository.dart'
    as _i21;
import '../features/registration/domain/repository/registration_repository.dart'
    as _i20;
import '../features/search/data/searcher_network_repository.dart' as _i23;
import '../features/search/domain/searcher_repository.dart' as _i22;
import 'register_module.dart' as _i30; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.FavoriteProductRepository>(
      () => _i10.FavoriteNetworkRepository(get<_i8.DioContainer>()));
  gh.lazySingleton<_i11.FavoriteProductsCubit>(
      () => _i11.FavoriteProductsCubit());
  gh.factory<_i12.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.lazySingleton<_i13.LoginCubit>(() => _i13.LoginCubit());
  gh.factory<_i14.LoginRepository>(
      () => _i15.LoginNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i16.PersonRepository>(
      () => _i17.PersonNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i18.ProductDetailsRepository>(
      () => _i19.ProductDetailsNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i20.RegistrationRepository>(
      () => _i21.RegistrationNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i22.SearcherRepository>(
      () => _i23.SearcherNetworkRepository(get<_i8.DioContainer>()));
  await gh.factoryAsync<_i24.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i25.AuthTokenStorage>(
      () => _i25.AuthTokenLocalStorage(get<_i12.FlutterSecureStorage>()));
  gh.factory<_i26.BasketRepository>(
      () => _i27.BasketNetworkRepository(get<_i8.DioContainer>()));
  gh.factory<_i28.CatalogRepository>(
      () => _i29.CatalogNetworkRepository(get<_i8.DioContainer>()));
  return get;
}

class _$AppConfigModule extends _i4.AppConfigModule {}

class _$RegisterModule extends _i30.RegisterModule {}
