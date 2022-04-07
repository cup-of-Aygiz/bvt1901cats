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

  Future<void> saveStateAndLogin(String phone, String password) async {
    try {
      emit(state.copyWith(loading: true));
      await _loginRepository.login(phone: phone, password: password);
      emit(state.copyWith(loading: false));
    } catch (e) {
      emit(state.copyWith(error: e, loading: false));
    }
  }
}
