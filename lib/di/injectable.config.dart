// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info_plus/device_info_plus.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../app/data/network_servise/dio_container.dart' as _i5;
import '../app/presentation/app_config.dart' as _i3;
import '../features/login/data/repository/login_network_repository.dart' as _i8;
import '../features/login/domain/repository/login_repository.dart' as _i7;
import '../features/registration/data/repository/registration_network_repository.dart'
    as _i10;
import '../features/registration/domain/repository/registration_repository.dart'
    as _i9;
import 'register_module.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appConfigModule = _$AppConfigModule();
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppConfig>(() => appConfigModule.getAppConfig());
  gh.factory<_i4.DeviceInfoPlugin>(() => registerModule.deviceInfoPlugin);
  gh.lazySingleton<_i5.DioContainer>(
      () => _i5.DioContainer(get<_i3.AppConfig>()));
  gh.factory<_i6.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.factory<_i7.LoginRepository>(() => _i8.LoginNetworkRepository());
  gh.factory<_i9.RegistrationRepository>(
      () => _i10.RegistrationNetworkRepository());
  await gh.factoryAsync<_i11.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  return get;
}

class _$AppConfigModule extends _i3.AppConfigModule {}

class _$RegisterModule extends _i12.RegisterModule {}
