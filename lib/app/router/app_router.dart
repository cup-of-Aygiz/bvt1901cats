library app_router;

import 'package:bvt1901_practice/app/domain/entity/app_error.dart';
import 'package:bvt1901_practice/app/presentation/app_config.dart';
import 'package:bvt1901_practice/dev/logger/app_loger.dart';
import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/router/presentation/components/tab_navigator_screen.dart';
import '../../features/router/router_feature.dart';

part 'app_navigator_observers.dart';
part 'app_screen_router.dart';
part 'app_tab_observer.dart';
part 'app_tab_router.dart';

class AppRouter with
    AppTabRouter,
    AppScreenRouter {
  AppRouter._({required int initialTabIndex}) {
    initTabRouter(initialTabIndex);
  }

  static late AppRouter instance;

  static void init({int initialTab = 0}) {
    instance = AppRouter._(initialTabIndex: initialTab);
    for (var tabScreen in instance.tabNavigatorScreensMap.values) {
      tabScreen.init(initialTab);
    }
  }
}
