import 'package:bvt1901_practice/app/data/network_servise/dio_container.dart';
import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../app/data/exceptions/newtwork_error_mapper.dart';
import '../../../../app/data/network_servise/token_interceptor.dart';
import '../../../../di/service_locator.dart';
import '../../domain/repository/login_repository.dart';
import '../auth_secure_storage.dart';
import '../dto/profile_dto.dart';

@Injectable(as: LoginRepository)
class LoginNetworkRepository extends LoginRepository {
  final DioContainer dioContainer;

  LoginNetworkRepository(this.dioContainer);

  @override
  Future<String> login(
      {required String phone, required String password}) async {
    try {
      final response = await dioContainer.dio.post(
        '/auth/login',
        data: {"phone": phone, "password": password},

      );
      getIt<DioContainer>()
          .addInterceptor(AuthTokenInterceptor(response.data['accessToken']));
      await getIt<AuthTokenStorage>()
          .saveAccessToken(response.data['accessToken']);
      return response.data['accessToken'];
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }

  @override
  Future<ProfileEntity?> getProfile({required String token}) async {
    try {
      final response = await dioContainer.dio.get('/account',
          options: Options(headers: {
            'x-access-token': token,
          }));
      return ProfileDTO.fromJson(response.data).toEntity();
    } catch (e) {
      throw mapToErrorModel(e);
    }
  }
}
