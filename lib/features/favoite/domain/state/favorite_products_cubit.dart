import 'dart:developer';

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

  FavoriteProductRepository  get _favoriteProductRepository  => getIt();

  void init() async {
    await loadFavoriteProducts();
  }

  Future<void> loadFavoriteProducts() async {
    try {
      emit(state.copyWith(loading: true));
      log('Началось');
      List<ProductEntity> listProducts =
          await _favoriteProductRepository.getProductList();

      log('Продукты получены');
      emit(state.copyWith(
        productList: listProducts,
        loading: false,));

      log('Емит');

    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> addFavoriteProduct(int id) async{
    try{
      emit(state.copyWith(loading: true));
      log('Началось ${id}');
      List<ProductEntity> listProducts =
      await _favoriteProductRepository.addProduct(id: id);
      log('Вот ${listProducts.length}');
      emit(state.copyWith(
        productList: listProducts,
        loading: false,));

    }
    on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> deleteFavoriteProduct(int id) async{
    try{
      emit(state.copyWith(loading: true));

      List<ProductEntity> listProducts =
      await _favoriteProductRepository.deleteProduct(id: id);

      emit(state.copyWith(
        productList: listProducts,
        loading: false,));

    }
    on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  }
