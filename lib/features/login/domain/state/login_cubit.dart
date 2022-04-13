import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../di/service_locator.dart';
import '../repository/login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(
          const LoginState(),
        );

  LoginRepository get _loginRepository => getIt();

  Future<bool> saveStateAndLogin(String phone, String password) async {
    try {
      emit(state.copyWith(loading: true));
      final profileEntity =
          await _loginRepository.login(phone: phone, password: password);
      emit(state.copyWith(loading: false));
      if (profileEntity != null) {
        return true;
      } else {
        return false;
      }
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e, loading: false));
      return false;
    }
  }
}
