import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:bvt1901_practice/features/basket/domain/state/basket_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';
import 'basket_repository.dart';

@LazySingleton()
class BasketCubit extends Cubit<BasketState> {
  BasketCubit()
      : super(
          const BasketState(productList: []),
        );

  BasketRepository get _basketProductsRepository => getIt();

  void init() async {
    await loadBasketProducts();
  }

  Future<void> loadBasketProducts() async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductEntity> listProducts =
          await _basketProductsRepository.getProductList();

      double totalPrice = getTotalPrice(listProducts);

      emit(state.copyWith(
        productList: listProducts,
        loading: false,
        totalPrice: totalPrice,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  double getTotalPrice(List<ProductEntity> listProducts) {
    double total = 0;
    for (int i = 0; i < listProducts.length; i++) {
      total += listProducts[i].amount * double.parse(listProducts[i].price);
    }
    return total;
  }
}
