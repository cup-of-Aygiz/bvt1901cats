import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/state/addresses_state.dart';
import 'package:bvt1901_practice/features/adreses_page/mock_repository/mock_address_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressesCubit extends Cubit<AddressesState> {
  AddressesCubit() : super(const AddressesState(addressesList: []));

  final MockAddressRepository _mockAddressRepository = MockAddressRepository();

  void init() {
    getAddressesList();
  }

  void getAddressesList() {
    emit(state.copyWith(loading: true));

    List<AddressEntity> addressesList = _mockAddressRepository.getAddresses();

    emit(state.copyWith(loading: false, addressesList: addressesList));
  }

  void addAddresses(AddressEntity addressEntity) {
    emit(state.copyWith(loading: true));

    _mockAddressRepository.addAddress(addressEntity: addressEntity);

    emit(state.copyWith(loading: false));
  }
}
