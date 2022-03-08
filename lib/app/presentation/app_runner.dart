import 'package:bvt1901_practice/app/domain/app_runner.dart';
import 'package:bvt1901_practice/app/router/app_router.dart';
import 'package:bvt1901_practice/di/injectable.dart';
import 'package:flutter/services.dart';

import 'app_config.dart';

class MainAppRunner extends AppRunner {
  MainAppRunner(this.config);

  final AppConfig config;

  @override
  Future<void> preloadData() async {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: SystemUiOverlay.values,
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    AppRouter.init();
    await configureDependencies(config);
  }

//TODO: Add CrashlyticsService
// @override
// void handleZonedException(error, stackTrace) {
//   super.handleZonedException(error, stackTrace);
//   getIt<CrashlyticsService>().recordError(error, stackTrace);
// }
}
