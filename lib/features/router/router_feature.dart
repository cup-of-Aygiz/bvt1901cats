import 'package:bvt1901_practice/features/router/presentation/components/tab_navigator_screen.dart';

import '../../app/router/app_router.dart';
import '../cart/presentation/screen/cart_screen.dart';
import '../favoite/presentation/screen/favotire_screen.dart';
import '../home/presentation/screen/home_screen.dart';
import '../profile/presentation/screen/profile_screen.dart';

Map<RouterTabType, TabNavigatorScreen> getTabNavigatorScreensMap() =>
    <RouterTabType, TabNavigatorScreen>{
      RouterTabType.home: TabNavigatorScreen(
          initialScreen: const HomeScreen(), routerTab: RouterTabType.home),
      RouterTabType.favorite: TabNavigatorScreen(
          initialScreen: const FavoriteScreen(),
          routerTab: RouterTabType.favorite),
      RouterTabType.cart: TabNavigatorScreen(
        initialScreen: const CartScreen(),
        routerTab: RouterTabType.cart,
      ),
      RouterTabType.cabinet: TabNavigatorScreen(
          initialScreen: const ProfileScreen(),
          routerTab: RouterTabType.cabinet),
    };
