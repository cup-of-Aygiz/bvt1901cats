import 'package:bvt1901_practice/features/registration/domain/state/registration_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../mock/registration_mock_repository.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(const RegistrationState());

  /// TODO
  /// 1 метод который будет сохранять значения state
  /// 2 валидацию на поля, при этом каждое поле со своим валидатором
  /// 3 отправлять на моковый репозиторий их
  /// 4 моковый репозиторий возвращает true/ false если регистрация прошла и отображать
  /// это значение на странице через error
  /// 5 true/ false - возвращаются рандомно
  /// [Random]
  Future<void> registration() async {
    emit(state.copyWith(loading: true));
    try {
      // RegistrationMockRepository registrationMockRepository =
      //     RegistrationMockRepository();
      // bool sigIn = await registrationMockRepository.registration(
      //     phone: state.phone, password: state.password);
      emit(state.copyWith(loading: false));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  void changePhone(String phone) {
    emit(state.copyWith(phone: phone));
  }

  void changeFirstName(String? firstName) {
    if (firstName != null) {
      emit(state.copyWith(firstName: firstName));
    }
  }

  void changePassword(String? password) {
    if (password != null) {
      emit(state.copyWith(password: password));
    }
  }
}
