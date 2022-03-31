import 'package:bvt1901_practice/app/domain/app_builder.dart';
import 'package:bvt1901_practice/app/router/app_router.dart';
import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import '../../features/welcom_page/presentation/screens/welcom_page_screen.dart';
import '../../l10n/generated/app_localizations.dart';
import 'app_config.dart';

class MainAppBuilder extends AppBuilder {
  MainAppBuilder() : super();

  // Widget get initialScreen => DeviceChecker(
  //   initialBuilder: (_) => const AppSplashScreen(),
  //   whenDeviceRegistered: (_) => AuthFeature(
  //     splashScreenBuilder: (_) => const AppSplashScreen(),
  //     welcomeBuilder: (_) => const WelcomeFeature(),
  //     authorizedBuilder: (_) => const RouterScreen(),
  //   ),
  // );

  @override
  Widget buildApp() {
    return

        ///TODO добавить при создании блоков :D
        // MultiBlocProvider(
        // providers: const [
        // BlocProvider<DeviceCheckerCubit>(
        //   create: (_) => getIt<DeviceCheckerCubit>()..init(),
        // ),
        // BlocProvider<AuthenticationCubit>.value(
        //     value: getIt<AuthenticationCubit>()),
        // BlocProvider<ViewedProductsCubit>.value(
        //     value: getIt<ViewedProductsCubit>()..init()),
        // BlocProvider<FavoriteProductsCubit>.value(
        //     value: getIt<FavoriteProductsCubit>()..init()),
        // BlocProvider<CartCubit>.value(value: getIt<CartCubit>()),
        // ],
        // child:
        ScreenUtilInit(
      designSize: const Size(375, 750),
      builder: () {
        return MaterialApp(
          title: 'AQUA',
          debugShowCheckedModeBanner:
              getIt<AppConfig>().environment.name == Environment.dev,
          // locale: AppLocalizations.supportedLocales.first,
          navigatorKey: AppRouter.instance.rootNavigatorKey,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          themeMode: ThemeMode.light,
          // theme: lightThemeData,
          home: const WelcomePageScreen(),
        );
      },
      // ),
    );
  }
}
