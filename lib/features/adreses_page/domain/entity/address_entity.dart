import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@freezed
class AddressEntity with _$AddressEntity{

  const factory AddressEntity({
    @Default('') final String address,
    @Default(0) final int entrance,
    @Default(0) final int flat,
    @Default(0) final int floor,
    @Default(0) final int intercom,
    @Default('') final String comment,


})=_AddressEntity;

  factory AddressEntity.fromJson(Map<String,dynamic> json)=>_$AddressEntityFromJson(json);

}