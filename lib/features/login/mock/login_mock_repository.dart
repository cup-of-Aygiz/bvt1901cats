import 'package:bvt1901_practice/app/data/exceptions/newtwork_error_mapper.dart';
import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';

import '../../../dev/mocking/mock_object.dart';
import '../../registration/domain/entity/person/person_entity.dart';
import '../../registration/mock/registaration_mock_storage.dart';
import '../domain/repository/login_repository.dart';

class LoginMockRepository extends LoginRepository
    with MockFactory<LoginRepository> {
  final RegistrationMockStorage _registrationMockStorage =
      RegistrationMockStorage();
  @override
  Future<ProfileEntity?> login({
    required String phone,
    required String password,
  }) async {
    try {
      final PersonEntity? personEntity =
          await _registrationMockStorage.loadPerson(
        phone: phone,
      );
      return personEntity != null
          ? ProfileEntity(
              firstName: personEntity.firstName,
              lastName: personEntity.lastName,
              middleName: personEntity.middleName,
              phone: personEntity.phone,
            )
          : null;
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
