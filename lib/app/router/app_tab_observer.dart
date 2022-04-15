part of 'app_router.dart';

enum RouterTabType { home, favorite, cart, cabinet}

abstract class RouterTabObserver {
  void onTabChanged(RouterTabType tab);
}

extension RouterTabTypeExtansions on RouterTabType {
  String getLocalizationName(BuildContext context) {
    final locale = context.appLocale;
    switch (this) {
      case RouterTabType.home:
        return locale.home_tab;
      case RouterTabType.favorite:
        return locale.favorite_tab;
      case RouterTabType.cart:
        return locale.cart_tab;
      case RouterTabType.cabinet:
        return locale.profile_tab;

    }
  }

  Widget get iconWidget {
    switch (this) {
      case RouterTabType.home:
        return  Icon(Icons.home,size: 20.h,);
      case RouterTabType.favorite:
        return  Icon(Icons.favorite,size: 20.h,);
      case RouterTabType.cart:
        return  Icon(Icons.shopping_basket_sharp,size: 20.h,);
      case RouterTabType.cabinet:
        return  Icon(Icons.account_circle,size: 20.h,);
    }
  }
}
