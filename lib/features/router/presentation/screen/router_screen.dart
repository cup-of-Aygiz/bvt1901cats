import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

import '../../../../app/presentation/theme/app_text_style.dart';

class RouterScreen extends StatelessWidget {
  const RouterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return WillPopScope(
      onWillPop: () async {
        final wasPop = await context.appRouter.maybePopCurrentTab();
        return !wasPop;
      },
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        body: ValueListenableBuilder<int>(
            valueListenable: context.appRouter.currentTabNotifier,
            builder: (_, i, w) => IndexedStack(
                  index: i,
                  children: [
                    ...context.appRouter.tabNavigatorScreensMap.values
                        .map((e) => e.buildTabNavigator())
                  ],
                )),
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: context.appRouter.currentTabNotifier,
          builder: (context, index, child) {
            return BottomNavigationBar(
              currentIndex: index,
              onTap: (index) {
                if (context.appRouter.currentTabNotifier.value == index) {
                  context.appRouter.popTabToRoot();
                } else {
                  context.appRouter.currentTabNotifier.value = index;
                }
              },
              elevation: 0,
              backgroundColor: colors.transparent,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: colors.blue,
              unselectedItemColor: colors.black,
              selectedLabelStyle: AppTextStyle.bottomNavigationLabel
                  .copyWith(color: colors.blue),
              unselectedLabelStyle: AppTextStyle.bottomNavigationLabel
                  .copyWith(color: colors.black),
              items: [
                ...context.appRouter.tabNavigatorScreensMap.values
                    .map((it) => it.buildTabBarItem(context))
              ],
            );
          },
        ),
      ),
    );
  }
}
