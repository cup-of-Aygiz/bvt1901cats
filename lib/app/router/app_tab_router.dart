// part of 'app_router.dart';
//
// class AppTabRouter {
//   late ValueNotifier<int> currentTabNotifier;
//
//   final _tabObservers = <RouterTabObserver>[];
//   final Map<RouterTabType, TabNavigatorScreen> tabNavigatorScreensMap =
//       getTabNavigatorScreensMap();
//
//   RouterTabType get currentTab =>
//       RouterTabType.values.elementAt(currentTabIndex);
//
//   int get currentTabIndex => currentTabNotifier.value;
//
//   GlobalKey<NavigatorState> getNavigatorKey(RouterTabType tab) =>
//       tabNavigatorScreensMap[tab]!.navigatorKey;
//
//   GlobalKey<NavigatorState> getCurrentNavigatorKey() =>
//       getNavigatorKey(currentTab);
//
//   void initTabRouter(int initialTabIndex) {
//     currentTabNotifier = ValueNotifier<int>(initialTabIndex);
//   }
//
//   void initTabObservers(Iterable<RouterTabObserver> observers) {
//     if (_tabObservers.isNotEmpty) {
//       return;
//     } else {
//       _tabObservers.addAll(observers);
//       if (_tabObservers.isNotEmpty) {
//         currentTabNotifier.addListener(_tabListener);
//       }
//     }
//   }
//
//   void addTabObserver(RouterTabObserver observer) {
//     _tabObservers.add(observer);
//     if (_tabObservers.length == 1) {
//       currentTabNotifier.addListener(_tabListener);
//     }
//   }
//
//   void removeTabObserver(RouterTabObserver observer) {
//     _tabObservers.remove(observer);
//     if (_tabObservers.isEmpty) {
//       currentTabNotifier.removeListener(_tabListener);
//     }
//   }
//
//   void _tabListener() {
//     final _currentTab = RouterTabType.values.elementAt(currentTabIndex);
//     for (var observer in _tabObservers) {
//       try {
//         observer.onTabChanged(_currentTab);
//       } catch (e) {
//         logException(e);
//       }
//     }
//   }
//
//   void openTab(RouterTabType tab) {
//     currentTabNotifier.value = tab.index;
//   }
//
//   Future<bool> maybePopCurrentTab() =>
//       tabNavigatorScreensMap[currentTab]!.maybePop();
//
//   void popTabToRoot() {
//     tabNavigatorScreensMap[currentTab]!.reset();
//   }
//
//   void dispose() {
//     _tabObservers.clear();
//     tabNavigatorScreensMap.clear();
//   }
// }
