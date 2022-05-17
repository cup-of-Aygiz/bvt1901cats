import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addresses_state.freezed.dart';

part 'addresses_state.g.dart';

@freezed
class AddressesState with _$AddressesState {
  const factory AddressesState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<AddressEntity> addressesList,
    AddressEntity? favoriteAddresses,
  }) = _AddressesState;

  factory AddressesState.fromJson(Map<String, dynamic> json) =>
      _$AddressesStateFromJson(json);
}
