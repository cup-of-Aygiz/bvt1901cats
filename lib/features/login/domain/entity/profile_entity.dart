import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    /// имя
    @Default('') final String firstName,

    /// фамилия
    @Default('') final String lastName,

    /// отчество
    @Default('') final String middleName,
    @Default('') final String phone,
  }) = _ProfileEntity;
  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
