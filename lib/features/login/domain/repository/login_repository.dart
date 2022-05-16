import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';

abstract class LoginRepository {
  Future<String> login({
    required String phone,
    required String password,
  });

  Future<ProfileEntity?> getProfile({
    required String token,
  });
}
