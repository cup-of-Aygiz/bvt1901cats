import 'package:bvt1901_practice/features/registration/domain/entity/person/person_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/registration_repository.dart';

@Injectable(as: RegistrationRepository)
class RegistrationNetworkRepository extends RegistrationRepository {
  @override
  Future<bool> registration({
    required PersonEntity personEntity,

  }) {
    // TODO: implement registration
    throw UnimplementedError();
  }

  @override
  Future<PersonEntity> loadPerson() {
    // TODO: implement loadPerson
    throw UnimplementedError();
  }
}
