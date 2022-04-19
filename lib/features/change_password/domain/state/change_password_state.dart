import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../registration/domain/entity/person/person_entity.dart';


part 'change_password_state.freezed.dart';
part 'change_password_state.g.dart';

@freezed
class  ChangePasswordState with _$ChangePasswordState{
  const factory ChangePasswordState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    required final PersonEntity personEntity,
  }) = _ChangePasswordState;
  factory ChangePasswordState.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordStateFromJson(json);
}
