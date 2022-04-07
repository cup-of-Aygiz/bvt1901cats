import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../registration/domain/entity/person/person_entity.dart';


//ToDo переделать
class LoginMockStorage {
  /// загрузка Пользователя
  Future<PersonEntity?> loadPerson() async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();
      final json = _sharedPreferences.containsKey('person_entity')
          ? _sharedPreferences.getString('person_entity')
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
      await _sharedPreferences.setString('person_entity', json);
    } catch (e) {
      rethrow;
    }
  }
}
