import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_entity.freezed.dart';
part 'person_entity.g.dart';

@freezed
class PersonEntity with _$PersonEntity {
  const factory PersonEntity({
    /// имя
    @Default('') final String firstName,

    /// фамилия
    @Default('') final String lastName,

    /// отчество
    @Default('') final String middleName,
    @Default('') final String phone,
    @Default('') final String password,
  }) = _PersonEntity;
  factory PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$PersonEntityFromJson(json);
}
