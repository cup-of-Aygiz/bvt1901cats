import 'dart:math';

import 'package:bvt1901_practice/features/registration/domain/entity/person/person_entity.dart';
import 'package:bvt1901_practice/features/registration/mock/registaration_mock_storage.dart';

import '../../../dev/mocking/mock_object.dart';
import '../domain/repository/registration_repository.dart';

class RegistrationMockRepository extends RegistrationRepository
    with MockFactory<RegistrationRepository> {

  final RegistrationMockStorage _registrationMockStorage = RegistrationMockStorage();
  @override
  Future<bool> registration({
    required PersonEntity personEntity,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    await _registrationMockStorage.savePerson(personEntity: personEntity);
    Random rand = Random();
    double falseProbability = .3;
    bool booleanResult = rand.nextDouble() > falseProbability;

    return booleanResult;
  }

  @override
  Future<PersonEntity> loadPerson() {
    // TODO: implement loadPerson
    throw UnimplementedError();
  }
}
