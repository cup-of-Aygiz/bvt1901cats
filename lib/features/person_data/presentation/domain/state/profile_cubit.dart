import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';
import 'package:bvt1901_practice/features/person_data/presentation/domain/state/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/domain/models/error_model.dart';
import '../../../../../di/service_locator.dart';
import '../../../../login/data/auth_secure_storage.dart';

class ProfileCubit extends Cubit<ProfileState> {
  AuthTokenStorage get _authTokenStorage => getIt();

  ProfileCubit()
      : super(
          const ProfileState(profileEntity: ProfileEntity()),
        );

  Future<void> init() async {
    try {
      emit(state.copyWith(loading: true));
      final profileEntity = await _authTokenStorage.loadAuthProfile();
      emit(state.copyWith(loading: false, profileEntity: profileEntity));
    } on ErrorModel catch (e) {
      emit(state.copyWith(error: e));
    }
  }
}
