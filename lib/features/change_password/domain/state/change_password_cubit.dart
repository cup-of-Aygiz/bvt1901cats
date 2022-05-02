import 'package:bvt1901_practice/features/change_password/domain/state/change_password_state.dart';
import 'package:bvt1901_practice/features/registration/domain/entity/person/person_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit()
      : super(
          const ChangePasswordState(
            personEntity: PersonEntity(),
          ),
        );

  Future<void> init() async {
    emit(state.copyWith(loading: false));
  }
}
