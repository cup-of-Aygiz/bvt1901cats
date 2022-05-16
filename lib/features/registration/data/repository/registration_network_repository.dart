import 'package:bvt1901_practice/features/login/data/auth_secure_storage.dart';
import 'package:bvt1901_practice/features/registration/domain/entity/person/person_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../../app/data/network_servise/dio_container.dart';
import '../../../../app/data/network_servise/token_interceptor.dart';
import '../../../../di/service_locator.dart';
import '../../domain/repository/registration_repository.dart';

@Injectable(as: RegistrationRepository)
class RegistrationNetworkRepository extends RegistrationRepository {
  final DioContainer dioContainer;

  RegistrationNetworkRepository(this.dioContainer);

  @override
  Future<bool> registration({
    required PersonEntity personEntity,
  }) async {
    try {
      final response = await dioContainer.dio.post(
        '/auth/register',
        data: {
          "name": personEntity.firstName,
          "surname": personEntity.lastName,
          "patronymic": personEntity.middleName,
          "phone": personEntity.phone,
          "password": personEntity.password,
          "organization_id": 2
        },
      );
      getIt<DioContainer>()
          .addInterceptor(AuthTokenInterceptor(response.data['accessToken']));
      await getIt<AuthTokenStorage>()
          .saveAccessToken(response.data['accessToken']);
      return (response.data['message'] == null);
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
