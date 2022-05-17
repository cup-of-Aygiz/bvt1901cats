import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';
import 'package:bvt1901_practice/features/person_data/presentation/domain/state/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/domain/models/error_model.dart';
import '../../../../../di/service_locator.dart';
import '../person_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  PersonRepository get personRepository => getIt();

  ProfileCubit()
      : super(
          const ProfileState(profileEntity: ProfileEntity()),
        );

  Future<void> init() async {
    try {
      emit(state.copyWith(loading: true));
      final profileEntity = await personRepository.loadProfile();
      emit(state.copyWith(loading: false, profileEntity: profileEntity));
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<void> updateUser(ProfileEntity profileEntity) async {
    try {
      emit(state.copyWith(loading: true));
      final newProfile =
          await personRepository.putProfile(profileEntity: profileEntity);
      emit(state.copyWith(loading: false, profileEntity: newProfile));
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e));
    }
  }
}
