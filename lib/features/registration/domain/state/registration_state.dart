import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';
import '../entity/person/person_entity.dart';

part 'registration_state.freezed.dart';
part 'registration_state.g.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(false) final bool loading,
    final ErrorModel error,
    required final PersonEntity personEntity,
  }) = _RegistrationState;
  factory RegistrationState.fromJson(Map<String, dynamic> json) =>
      _$RegistrationStateFromJson(json);
}
