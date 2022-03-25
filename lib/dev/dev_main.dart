import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/app/presentation/app_builder.dart';
import 'package:bvt1901_practice/app/presentation/app_config.dart';
import 'package:bvt1901_practice/app/presentation/app_runner.dart';
import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../features/registration/mock/registration_mock_repository.dart';
import 'logger/app_loger.dart';
import 'mocking/runtime_mock_config.dart';

/// 1. Добавляем моки для запуска
///
/// final _mockConfig = RuntimeMockConfig.custom([
///   //SampleMockRepository(),
///   //SampleMockApi(),
/// ]);
final _mockConfig = RuntimeMockConfig.custom([
  RegistrationMockRepository(),
]);

/// 3. Если не нужно запускать DevicePreview
/// то удаляем миксин DevicePreviewBuilder
class DevAppBuilder extends MainAppBuilder {
  // Переопределяем первый экран для запуска
// @override
//   Widget get initialScreen => super.initialScreen;
}

class DevRunner extends MainAppRunner {
  DevRunner(AppConfig config) : super(config);

  @override
  Future<void> preloadData() async {
    await super.preloadData();
    _mockConfig.replaceDependenciesForTests(GetIt.instance);
    if (LoggerConfig.isEnabled(LogType.data)) {
      getIt<DioContainer>().addInterceptor(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 200,
      ));
    }
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.loadFromFile('config/dev.json');
  LoggerConfig.init(LoggerConfig.all());
  final runner = DevRunner(AppConfig.current);
  final builder = DevAppBuilder();
  runner.run(builder);
}
