import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_config.g.dart';

@module
abstract class AppConfigModule {
  AppConfig getAppConfig() => AppConfig.current;
}

@JsonSerializable()
class AppConfig {
  AppConfig({
    required this.baseUrl,
    required this.environment,
    required this.appScheme,
    required this.host,
    required this.apiToken,
    this.flavorName,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  static String name = 'appConfig';

  static Future<AppConfig> loadFromFile(String path) async {
    final data = await rootBundle.loadString(path);
    final jsonData = json.decode(data);
    _config = AppConfig.fromJson(jsonData);
    return _config;
  }

  static AppConfig loadFromEnv() {
    const data = String.fromEnvironment('appConfig');
    final jsonData = json.decode(data);
    _config = AppConfig.fromJson(jsonData);
    return _config;
  }

  static late AppConfig _config;

  static AppConfig get current => _config;

  final String baseUrl;
  final String host;
  final String appScheme;
  final String? flavorName;
  final String apiToken;

  /// dev.json,stage,prod
  @JsonKey(fromJson: _envFromJson, toJson: _envToJson)
  final Environment environment;
}

Environment _envFromJson(String value) {
  return Environment(value);
}

String _envToJson(Environment value) {
  return value.name;
}
