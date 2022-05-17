import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/state/addresses_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/address_storage.dart';

@LazySingleton()
class AddressesCubit extends Cubit<AddressesState> {
  AddressesCubit() : super(const AddressesState(addressesList: []));

  AddressMockStorage addressMockStorage = AddressMockStorage();

  Future<void> init() async {
    await getAddressesList();
    await getFavoriteAddress();
  }

  Future<void> getAddressesList() async {
    try {
      emit(state.copyWith(loading: true));
      List<AddressEntity>? addressesList =
          await addressMockStorage.loadAddressList();
      emit(state.copyWith(loading: false, addressesList: addressesList ?? []));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> getFavoriteAddress() async {
    try {
      emit(state.copyWith(loading: true));
      AddressEntity? address = await addressMockStorage.loadFavoriteAddress();
      emit(state.copyWith(loading: false, favoriteAddresses: address));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> addAddresses(
      {required AddressEntity addressEntity, AddressEntity? oldAddress}) async {
    try {
      emit(state.copyWith(loading: true));
      if(oldAddress!=null){
        deleteAddress(oldAddress);
      }
      List<AddressEntity> addressesList =
          await addressMockStorage.loadAddressList() ?? [];
      addressesList.add(addressEntity);
      addressesList.remove(oldAddress);
      await addressMockStorage.updateAddressList(addressList: addressesList);
      emit(state.copyWith(loading: false, addressesList: addressesList));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  /// Удаление адреса
  Future<void> deleteAddress(AddressEntity item) async {
    try {
      List<AddressEntity> addressesList = state.addressesList;
      List<AddressEntity> newAddressesList = [];
      for(var items in addressesList){
        if(items!=item) {
          newAddressesList.add(items);
        }
      }
      addressMockStorage.updateAddressList(addressList: newAddressesList);
      emit(state.copyWith(addressesList: newAddressesList));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  /// Сделать адрес любимым
  Future<void> favoriteAddress(AddressEntity addressEntity) async {
    try {
      emit(state.copyWith(loading: true));
      if (state.favoriteAddresses != null) {
        await addressMockStorage.deleteFavoriteAddress();
      }
      await addressMockStorage.saveFavoriteAddress(
          addressEntity: addressEntity);
      emit(state.copyWith(loading: false, favoriteAddresses: addressEntity));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
