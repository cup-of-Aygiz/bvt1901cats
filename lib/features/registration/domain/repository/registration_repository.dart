import 'package:bvt1901_practice/features/registration/domain/entity/person/person_entity.dart';

abstract class RegistrationRepository {
  Future<bool> registration({
    required PersonEntity personEntity,

  });

  Future<PersonEntity> loadPerson();
}
