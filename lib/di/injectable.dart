import 'package:bvt1901_practice/app/presentation/app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

@InjectableInit()
Future configureDependencies(AppConfig config) async {
  await $initGetIt(GetIt.instance, environment: config.environment.name);
}
