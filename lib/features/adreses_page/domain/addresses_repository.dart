import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';

abstract class AddressesRepository {
  List<AddressEntity> getAddresses();
  void addAddress({required AddressEntity addressEntity});
}
