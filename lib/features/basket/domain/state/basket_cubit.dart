import 'package:bvt1901_practice/di/service_locator.dart';
import 'package:bvt1901_practice/features/basket/domain/state/basket_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../product_page/domain/entity/product_details_entity.dart';
import '../basket_repository.dart';

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

      List<ProductDetailsEntity> listProducts =
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

  double getTotalPrice(List<ProductDetailsEntity> listProducts) {
    double total = 0;
    for (int i = 0; i < listProducts.length; i++) {
      total += listProducts[i].amount * double.parse(listProducts[i].price);
    }
    return total;
  }

  Future<void> addProduct(int productId, int amount) async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductDetailsEntity> listProducts = await _basketProductsRepository
          .addInProductList(productId: productId, amount: amount);

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

  Future<void> deleteProduct(int id) async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductDetailsEntity> listProducts =
          await _basketProductsRepository.deleteFromProductList(productId: id);

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

  Future<void> updateProductList(int productId, int amount) async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductDetailsEntity> listProducts =
          await _basketProductsRepository.updateProductList(
        productId: productId,
        amount: amount,
      );

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

  Future<void> clearProductList() async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductDetailsEntity> listProducts =
          await _basketProductsRepository.clearProductList();

      double totalPrice = 0;

      emit(state.copyWith(
        productList: listProducts,
        totalPrice: totalPrice,
      ));

      emit(state.copyWith(
        loading: false,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
