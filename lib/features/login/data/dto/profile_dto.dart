import 'package:bvt1901_practice/features/login/domain/entity/profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.g.dart';

@JsonSerializable()
class ProfileDTO {
  /// имя
  @JsonKey(name: "name")
  final String? firstName;

  /// фамилия
  @JsonKey(name: "surname")
  final String? lastName;

  /// отчество
  @JsonKey(name: "patronymic")
  final String? middleName;
  final String? phone;

  ProfileDTO({
    this.firstName,
    this.lastName,
    this.middleName,
    this.phone,
  });

  factory ProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$ProfileDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDTOToJson(this);

  ProfileEntity toEntity() {
    return ProfileEntity(
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      middleName: middleName ?? '',
      phone: phone ?? '',
    );
  }
}
