import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';

abstract class LoginRepository {
  Future<ProfileEntity> login({
    required String phone,
    required String password,
  });
}
