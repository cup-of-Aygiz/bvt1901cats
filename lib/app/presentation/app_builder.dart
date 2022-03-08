import 'package:bvt1901_practice/app/domain/app_builder.dart';
import 'package:bvt1901_practice/app/router/app_router.dart';
import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          // supportedLocales: AppLocalizations.supportedLocales,
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', ''), // English, no country code
            Locale('ru', ''), // Spanish, no country code
          ],
          themeMode: ThemeMode.light,
          // theme: lightThemeData,
          home: RegistrationScreen(),
        );
      },
      // ),
    );
  }
}
