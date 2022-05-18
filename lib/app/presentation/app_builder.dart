import 'package:bvt1901_practice/app/domain/app_builder.dart';
import 'package:bvt1901_practice/app/router/app_router.dart';
import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:bvt1901_practice/features/login/domain/state/login_state.dart';
import 'package:bvt1901_practice/features/orders/domain/state/orders_cubit.dart';
import 'package:bvt1901_practice/features/router/presentation/screen/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import '../../features/basket/domain/state/basket_cubit.dart';
import '../../features/favoite/domain/state/favorite_products_cubit.dart';
import '../../features/login/domain/state/login_cubit.dart';
import '../../features/products_catalog/domain/state/catalog_cubit.dart';
import '../../l10n/generated/app_localizations.dart';
import 'app_config.dart';

class MainAppBuilder extends AppBuilder {
  MainAppBuilder() : super();

  @override
  Widget buildApp() {
    return

        ///TODO добавить при создании блоков :D
        MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (_) => getIt<LoginCubit>()..init(),
        ),
        BlocProvider<CatalogCubit>(
          create: (_) => getIt<CatalogCubit>()..init(),
        ),
        BlocProvider<BasketCubit>(
          create: (_) => BasketCubit()..init(),
        ),
        BlocProvider<OrdersCubit>(
          create: (_) => OrdersCubit()..init(),
        ),
        BlocProvider<FavoriteProductsCubit>(
          create: (_) => getIt<FavoriteProductsCubit>()..loadFavoriteProducts(),
        ),
        BlocProvider<OrdersCubit>(
          create: (_) => OrdersCubit()..init(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 750),
        builder: (_) {
          return BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
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
                home: SplashScreen(
                  cubit: context.read<LoginCubit>(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
