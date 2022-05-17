import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../domain/entity/address_entity.dart';

/// Класс только для сохранение моковых address
class AddressMockStorage {
  /// загрузка Любимого Адреса
  Future<AddressEntity?> loadFavoriteAddress() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = sharedPreferences.containsKey('favorite_address')
          ? sharedPreferences.getString('favorite_address')
          : null;
      if (json != null) {
        return AddressEntity.fromJson(jsonDecode(json));
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// сохранение любимого адреса
  Future<void> saveFavoriteAddress(
      {required AddressEntity addressEntity}) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = jsonEncode(addressEntity.toJson());
      await sharedPreferences.setString('favorite_address', json);
    } catch (e) {
      rethrow;
    }
  }

  /// удаление любимого адреса
  Future<void> deleteFavoriteAddress() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.remove('favorite_address');
    } catch (e) {
      rethrow;
    }
  }

  /// Загрузка списка адресов
  Future<List<AddressEntity>?> loadAddressList() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = sharedPreferences.containsKey('address_list')
          ? sharedPreferences.getStringList('address_list')
          : null;
      if (json != null) {
        return json
            .map((remote) => AddressEntity.fromJson(jsonDecode(remote)))
            .toList();
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Обновить список адресов
  Future<void> updateAddressList(
      {required List<AddressEntity> addressList}) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      List<String> json = [];
      for (var item in addressList) {
        json.add(jsonEncode(item.toJson()));
      }
      await sharedPreferences.setStringList('address_list', json);
    } catch (e) {
      rethrow;
    }
  }
}
