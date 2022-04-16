import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../entity/profile_entity.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    final ProfileEntity? profileEntity,
  }) = _LoginState;
  factory LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);
}