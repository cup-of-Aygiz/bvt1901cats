import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/router/app_router.dart';

class TabNavigatorScreen {
  TabNavigatorScreen({
    required this.initialScreen,
    required this.routerTab,
    this.observers = const <NavigatorObserver>[],
  });

  final RouterTabType routerTab;
  final Widget initialScreen;
  final List<NavigatorObserver> observers;
  final navigatorKey = GlobalKey<NavigatorState>();

  bool get isCurrent => AppRouter.instance.currentTab == routerTab;

  Widget buildTabNavigator() {
    return Offstage(
      offstage: !isCurrent,
      child: IgnorePointer(
        ignoring: !isCurrent,
        child: Navigator(
            key: navigatorKey,
            observers: observers,
            initialRoute: isCurrent ? 'init' : '/',
            onGenerateRoute: (settings) {
              return PageRouteBuilder(
                settings: settings,
                pageBuilder: (context, _, __) => settings.name == 'init'
                    ? initialScreen
                    : const SizedBox.shrink(),
              );
            }),
      ),
    );
  }

  BottomNavigationBarItem buildTabBarItem(BuildContext context) {
    final colors = context.appColors;
    final tabName = routerTab.getLocalizationName(context);

    return BottomNavigationBarItem(
      backgroundColor: colors.blue,
      label: tabName,
      tooltip: tabName,
      icon: Padding(
        padding: EdgeInsets.only(top: 10.h, bottom: 3.h),
        child: routerTab.iconWidget,
      ),
    );
  }

  // При инициализации подписывается на AppRouter.instance.currentTabNotifier
  // если не является стартовым экраном
  void init(int initialTabIndex) {
    if (initialTabIndex == routerTab.index) {
      return;
    }
    AppRouter.instance.currentTabNotifier.addListener(_initializeSubscription);
  }

  void _initializeSubscription() {
    if (AppRouter.instance.currentTab == routerTab) {
      navigatorKey.currentState?.pushReplacementNamed('init');
      AppRouter.instance.currentTabNotifier
          .removeListener(_initializeSubscription);
    }
  }

  // сбрасывает текущий навигатор до начального состояния
  void reset() {
    navigatorKey.currentState?.popUntil((route) => route.isFirst);
  }

  Future<bool> maybePop() async {
    if (navigatorKey.currentState != null) {
      return await navigatorKey.currentState!.maybePop();
    } else {
      return false;
    }
  }
}
