// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => AppConfig(
      baseUrl: json['baseUrl'] as String,
      environment: _envFromJson(json['environment'] as String),
      appScheme: json['appScheme'] as String,
      host: json['host'] as String,
      apiToken: json['apiToken'] as String,
      flavorName: json['flavorName'] as String?,
    );

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'host': instance.host,
      'appScheme': instance.appScheme,
      'flavorName': instance.flavorName,
      'apiToken': instance.apiToken,
      'environment': _envToJson(instance.environment),
    };
