import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';

abstract class PersonRepository {
  Future<ProfileEntity?> putProfile({
    required ProfileEntity profileEntity,
  });

  Future<ProfileEntity?> loadProfile();
}
