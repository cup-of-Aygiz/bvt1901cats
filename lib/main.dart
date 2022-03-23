import 'package:flutter/cupertino.dart';
import 'app/presentation/app_config.dart';
import 'dev/dev_main.dart';
import 'dev/logger/app_loger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.loadFromFile('config/dev.json');
  LoggerConfig.init(LoggerConfig.all());
  final runner = DevRunner(AppConfig.current);
  final builder = DevAppBuilder();
  runner.run(builder);
}
