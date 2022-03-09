library app_logger;

import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

part 'src/config.dart';
part 'src/types.dart';
part 'src/wrapper.dart';

void logString(LogType logType, dynamic message, String tag) {
  final log = '[$tag] $message';
  _all[logType]?.log(log);
}

void logJust(dynamic message, {String? tag}) {
  _all[LogType.debug]?.log('[${tag ?? 'DEBUG'}] $message');
}

void domainLog(dynamic message, {String? tag}) {
  logString(LogType.domain, message, tag ?? 'DOMAIN');
}

void dataLog(dynamic message, {String? tag}) {
  logString(LogType.data, message, tag ?? 'DATA');
}

void logException(Object? e, [StackTrace? stackTrace]) {
  try {
    final log = '[error] ${e.runtimeType.toString()}';
    _all[LogType.exceptions]?.log(log, e, stackTrace);
  } catch (e) {
    // ignore: avoid_print
    print(e);
  }
}
