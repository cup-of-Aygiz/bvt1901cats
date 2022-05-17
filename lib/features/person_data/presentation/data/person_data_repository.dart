import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../../di/service_locator.dart';
import '../../../login/data/auth_secure_storage.dart';
import '../../../login/data/dto/profile_dto.dart';
import '../domain/person_repository.dart';

@Injectable(as: PersonRepository)
class PersonNetworkRepository extends PersonRepository {
  final DioContainer dioContainer;

  PersonNetworkRepository(this.dioContainer);

  @override
  Future<ProfileEntity?> putProfile(
      {required ProfileEntity profileEntity}) async {
    try {
      final String? token = await getIt<AuthTokenStorage>().loadAccessToken();
      final response = await dioContainer.dio.put(
        '/account',
        options: Options(headers: {
          'x-access-token': token,
        }),
        data: {
          "name": profileEntity.firstName,
          "surname": profileEntity.lastName,
          "patronymic": profileEntity.middleName
        },
      );
      return ProfileDTO.fromJson(response.data).toEntity();
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<ProfileEntity?> loadProfile() async {
    try {
      final String? token = await getIt<AuthTokenStorage>().loadAccessToken();
      final response = await dioContainer.dio.get(
        '/account',
        options: Options(headers: {
          'x-access-token': token,
        }),
      );
      return ProfileDTO.fromJson(response.data).toEntity();
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
