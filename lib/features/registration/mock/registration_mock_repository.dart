import 'dart:math';

import '../domain/repository/registration_repository.dart';

class RegistrationMockRepository extends RegistrationRepository {
  @override
  Future<bool> registration({
    required String firstName,
    required String lastName,
    required String middleName,
    required String phone,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 3));

    Random rand = Random();
    double falseProbability = .3;
    bool booleanResult = rand.nextDouble() > falseProbability;

    return booleanResult;
  }
}
