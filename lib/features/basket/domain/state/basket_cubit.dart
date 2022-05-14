import 'package:bvt1901_practice/features/basket/domain/state/basket_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';
import '../../mock_repository/basket_mock_repository.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit()
      : super(
          const BasketState(productList: []),
        );


  final BasketMockRepository _basketProductsMockRepository =  BasketMockRepository();

  void init() async {
    await loadBasketProducts();
  }

  Future<void> loadBasketProducts() async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductEntity> listProducts =
      await _basketProductsMockRepository.getProductList();

      double totalPrice = getTotalPrice();

      emit(state.copyWith(
        productList: listProducts,
        loading: false,
        totalPrice: totalPrice,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  double getTotalPrice(){
    return 423.56;
  }

}
