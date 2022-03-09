// part of 'app_router.dart';
//
// enum RouterTabType { home, catalog, cart, cabinet, menu }
//
// abstract class RouterTabObserver {
//   void onTabChanged(RouterTabType tab);
// }
//
// extension RouterTabTypeExtansions on RouterTabType {
//   String getLocalizationName(BuildContext context) {
//     final locale = AppLocalizations.of(context)!;
//     switch (this) {
//       case RouterTabType.home:
//         return locale.navigationHome;
//       case RouterTabType.catalog:
//         return locale.navigationCatalog;
//       case RouterTabType.cart:
//         return locale.navigationCart;
//       case RouterTabType.cabinet:
//         return locale.navigationCabinet;
//       case RouterTabType.menu:
//         return locale.navigationMenu;
//     }
//   }
//
//   String get iconPath {
//     switch (this) {
//       case RouterTabType.home:
//         return Assets.icons.navHome.path;
//       case RouterTabType.catalog:
//         return Assets.icons.navCatalog.path;
//       case RouterTabType.cart:
//         return Assets.icons.navCart.path;
//       case RouterTabType.cabinet:
//         return Assets.icons.navCabinet.path;
//       case RouterTabType.menu:
//         return Assets.icons.navMenu.path;
//     }
//   }
// }
