import 'package:get_it/get_it.dart';

/// [T] - тип заменяемого репозитория
/// 1. нужно унаследоватьcя от MockMockObject<T>
/// 2. Если нужно, то переопределить метод register.
/// по умолчанию он регистрирует singleton
///
/// Пример:
/// UserMockRepository extends MockRepository<UserRepository>
/// и реализовать метод register()
///   @override
///   void register() {
///     locator.registerFactory<UserRepository>(this);
///   }
///
///
///
///

mixin MockSingleton<T extends Object> implements MockObject<T> {
  @override
  void replace(GetIt locator) {
    if (locator.isRegistered<T>()) {
      locator.unregister<T>();
    }
    register(locator);
  }

  @override
  void register(GetIt locator) {
    locator.registerSingleton<T>(this as T);
  }
}

mixin MockFactory<T extends Object> implements MockObject<T> {
  @override
  void replace(GetIt locator) {
    if (locator.isRegistered<T>()) {
      locator.unregister<T>();
    }
    register(locator);
  }

  @override
  void register(GetIt locator) {
    locator.registerFactory<T>(() => this as T);
  }
}

abstract class MockObject<T extends Object> {
  const MockObject._();

  void replace(GetIt locator);

  void register(GetIt locator);
}
