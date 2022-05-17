import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../app/data/network_servise/dio_container.dart';
import '../../../../app/data/network_servise/token_interceptor.dart';
import '../../../../di/service_locator.dart';
import '../../data/auth_secure_storage.dart';
import '../repository/login_repository.dart';
import 'login_state.dart';

@LazySingleton()
class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(
          const LoginState(),
        );

  LoginRepository get _loginRepository => getIt();

  AuthTokenStorage get _authTokenStorage => getIt();

  Future<void> init() async {
    try {
      final token = await _authTokenStorage.loadAccessToken();
      if (token != null) {
        await getProfile(token: token);
      }
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<bool> saveStateAndLogin(String phone, String password) async {
    try {
      emit(state.copyWith(loading: true));
      final token =
          await _loginRepository.login(phone: phone, password: password);
      return await getProfile(token: token);
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e, loading: false));
      return false;
    }
  }

  Future<bool> getProfile({required String token}) async {
    try {
      final profileEntity = await _loginRepository.getProfile(token: token);
      emit(state.copyWith(
        loading: false,
        profileEntity: profileEntity,
      ));
      if (profileEntity != null) {
        _authTokenStorage.saveAuthProfile(profileEntity);
        return true;
      } else {
        return false;
      }
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e, loading: false));
      return false;
    }
  }

  Future<void> logOut() async {
    emit(state.copyWith(
      profileEntity: null,
    ));
    await getIt<AuthTokenStorage>().deleteAccessToken();
    getIt<DioContainer>()
        .deleteInterceptor(AuthTokenInterceptor);
  }
}
