import 'package:get_it/get_it.dart';

import 'mock_object.dart';

class RuntimeMockConfig {
  RuntimeMockConfig._(this.included);

  factory RuntimeMockConfig.custom(List<MockObject> values) =>
      RuntimeMockConfig._(values);

  final List<MockObject> included;

  void replaceDependenciesForTests(GetIt locator) {
    for (var element in included) {
      element.replace(locator);
    }
  }
}
