part of 'app_router.dart';

final navigatorObservers = <NavigatorObserver>[];

class AppNavigatorObserver extends NavigatorObserver {
  static const blackList = ['/', 'init'];

  @override
  void didPush(Route route, Route? previousRoute) {
    if (blackList.contains(route.settings.name)) {
      return;
    }
    for (var observer in navigatorObservers) {
      try {
        observer.didPush(route, previousRoute);
      } catch (e) {
        logException(e);
      }
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if (blackList.contains(route.settings.name)) {
      return;
    }
    for (var observer in navigatorObservers) {
      try {
        observer.didPop(route, previousRoute);
      } catch (e) {
        logException(e);
      }
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (blackList.contains(route.settings.name)) {
      return;
    }
    for (var observer in navigatorObservers) {
      try {
        observer.didRemove(route, previousRoute);
      } catch (e) {
        logException(e);
      }
    }
    super.didRemove(route, previousRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    if (blackList.contains(route.settings.name)) {
      return;
    }
    for (var observer in navigatorObservers) {
      try {
        observer.didStartUserGesture(route, previousRoute);
      } catch (e) {
        logException(e);
      }
    }
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    for (var observer in navigatorObservers) {
      try {
        observer.didStopUserGesture();
      } catch (e) {
        logException(e);
      }
    }
    super.didStopUserGesture();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    for (var observer in navigatorObservers) {
      try {
        observer.didReplace(newRoute: newRoute, oldRoute: oldRoute);
      } catch (e) {
        logException(e);
      }
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
