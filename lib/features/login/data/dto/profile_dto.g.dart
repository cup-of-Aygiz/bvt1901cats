// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDTO _$ProfileDTOFromJson(Map<String, dynamic> json) => ProfileDTO(
      firstName: json['name'] as String?,
      lastName: json['surname'] as String?,
      middleName: json['patronymic'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$ProfileDTOToJson(ProfileDTO instance) =>
    <String, dynamic>{
      'name': instance.firstName,
      'surname': instance.lastName,
      'patronymic': instance.middleName,
      'phone': instance.phone,
    };
