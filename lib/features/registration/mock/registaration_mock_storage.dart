import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../domain/entity/person/person_entity.dart';

class RegistrationMockStorage {
  /// загрузка Пользователя
  Future<PersonEntity?> loadPerson({
    required String phone,
  }) async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();
      final json = _sharedPreferences.containsKey('person_entity$phone')
          ? _sharedPreferences.getString('person_entity$phone')
          : null;
      if (json != null) {
        return PersonEntity.fromJson(jsonDecode(json));
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// сохренение Пользователя
  Future<void> savePerson({required PersonEntity personEntity}) async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();
      final json = jsonEncode(personEntity.toJson());
      await _sharedPreferences.setString(
          'person_entity${personEntity.phone}', json);
    } catch (e) {
      rethrow;
    }
  }
}
