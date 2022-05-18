import 'package:bvt1901_practice/features/favoite/domain/state/favorite_products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../../di/service_locator.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';
import '../favorite_product_repository.dart';

@LazySingleton()
class FavoriteProductsCubit extends Cubit<FavoriteProductState> {
  FavoriteProductsCubit()
      : super(
          const FavoriteProductState(
            productList: [],
          ),
        );

  FavoriteProductRepository get favoriteProductRepository => getIt();

  Future<void> loadFavoriteProducts() async {
    try {
      emit(state.copyWith(loading: true));
      final newList = await favoriteProductRepository.getProductList();
      emit(state.copyWith(loading: false, productList: newList));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> updateList(int id) async {
    try {
      emit(state.copyWith(loading: true));
      List<ProductEntity> newList = state.productList;
      bool added = true;
      for (var item in newList) {
        if (item.id == id) {
          added = false;
        }
      }
      if (added) {
        newList = await favoriteProductRepository.addedProducts(id);
      } else {
        newList = await favoriteProductRepository.deleteProducts(id);
      }
      emit(state.copyWith(loading: false, productList: newList));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
