import 'package:bvt1901_practice/features/adreses_page/domain/addresses_repository.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';

class MockAddressRepository extends AddressesRepository{

  final List<AddressEntity> _addressesList = [];

  @override
  List<AddressEntity> getAddresses() {
    return _addressesList;
  }

  @override
  void addAddress({required AddressEntity addressEntity}) {
    _addressesList.add(addressEntity);
  }

}