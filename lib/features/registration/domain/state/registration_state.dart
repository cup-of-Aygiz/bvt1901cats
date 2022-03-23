import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity/person/person_entity.dart';

part 'registration_state.freezed.dart';
part 'registration_state.g.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(false) final bool loading,
    final dynamic error,
    required final PersonEntity personEntity,
  }) = _RegistrationState;
  factory RegistrationState.fromJson(Map<String, dynamic> json) =>
      _$RegistrationStateFromJson(json);
}
