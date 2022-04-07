import 'package:freezed_annotation/freezed_annotation.dart';
import '../entity/profile_entity.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState({
    @Default(false) final bool loading,
    final dynamic error,
    final ProfileEntity? profileEntity,
  }) = _LoginState;
  factory LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);
}