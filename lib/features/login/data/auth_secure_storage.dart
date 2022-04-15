import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../domain/entity/profile_entity.dart';

abstract class AuthTokenStorage {
  Future<void> saveAccessToken(String accessToken);

  Future<String?> loadAccessToken();

  Future<void> saveAuthProfile(ProfileEntity profileEntity);

  Future<ProfileEntity?> loadAuthProfile();
}

@Injectable(as: AuthTokenStorage)
class AuthTokenLocalStorage extends AuthTokenStorage {
  AuthTokenLocalStorage(this._secureStorage);

  final FlutterSecureStorage _secureStorage;
  final AndroidOptions androidOptions =
      const AndroidOptions(resetOnError: true);

  @override
  Future<void> saveAccessToken(String accessToken) async {
    try {
      await _secureStorage.write(
          key: 'accessTokenKey', value: accessToken, aOptions: androidOptions);
    } catch (_) {}
  }

  @override
  Future<String?> loadAccessToken() async {
    try {
      return await _secureStorage.read(
          key: 'accessTokenKey', aOptions: androidOptions);
    } catch (_) {
      return Future(() => null);
    }
  }

  @override
  Future<ProfileEntity?> loadAuthProfile() async {
    try {
      final json = await _secureStorage.read(
          key: 'profileEntity', aOptions: androidOptions);
      if (json != null) {
        return ProfileEntity.fromJson(jsonDecode(json));
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> saveAuthProfile(ProfileEntity profileEntity) async {
    try {
      await _secureStorage.write(
          key: 'profileEntity',
          value: jsonEncode(profileEntity.toJson()),
          aOptions: androidOptions);
    } catch (_) {}
  }
}
