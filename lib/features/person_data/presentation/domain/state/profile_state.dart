import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import '../../../../../app/domain/models/error_model.dart';
import '../../../../login/domain/entity/profile_entity.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    final ProfileEntity? profileEntity,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);
}
