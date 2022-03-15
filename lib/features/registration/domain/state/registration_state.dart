import 'package:freezed_annotation/freezed_annotation.dart';


part 'registration_state.freezed.dart';
part 'registration_state.g.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(false) final bool loading,
    final dynamic error,
    /// имя
    @Default('') final String firstName,
    /// отчество
    @Default('') final String middleName,
    /// фамилия
    @Default('') final String lastName,
    @Default('') final String phone,
    @Default('') final String password,
  }) = _RegistrationState;
  factory RegistrationState.fromJson(Map<String, dynamic> json) => _$RegistrationStateFromJson(json);
}
