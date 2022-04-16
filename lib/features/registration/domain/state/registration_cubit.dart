import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:bvt1901_practice/features/registration/domain/entity/person/person_entity.dart';
import 'package:bvt1901_practice/features/registration/domain/state/registration_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/service_locator.dart';
import '../repository/registration_repository.dart';

// import '../../mock/registration_mock_repository.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit()
      : super(
          const RegistrationState(
            personEntity: PersonEntity(),
          ),
        );

  RegistrationRepository get _registrationRepository => getIt();

  Future<void> init() async {
    emit(state.copyWith(
        personEntity: await _registrationRepository.loadPerson()));
  }

  Future<void> saveStateAndRegistration(Map<String, dynamic> json) async {
    try {
      emit(state.copyWith(personEntity: PersonEntity.fromJson(json)));
      emit(state.copyWith(loading: true));
      await _registrationRepository.registration(
          personEntity: state.personEntity);
      emit(state.copyWith(loading: false));
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e, loading: false));
    }
  }
}
