import 'dart:developer';

import 'package:bvt1901_practice/features/favoite/domain/state/favorite_products_state.dart';
import 'package:bvt1901_practice/features/favoite/mock_repository/favorite_products_mock_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';

class FavoriteProductsCubit extends Cubit<FavoriteProductState> {
  FavoriteProductsCubit()
      : super(
          const FavoriteProductState(
            productList: [],
          ),
        );

  //FavoriteProductsMockRepository get _favoriteProductsMockRepository => getIt();
  final FavoriteProductsMockRepository _favoriteProductsMockRepository =  FavoriteProductsMockRepository();

  void init() async {
    await getMaxLength();
    await loadFavoriteProducts();
  }

  Future<void> loadFavoriteProducts() async {
    try {
      emit(state.copyWith(loading: true));

      List<ProductEntity> listProducts =
          await _favoriteProductsMockRepository.getProductList(
        start: state.start,
        end: state.end,
      );

      log("Начало емита");
      print({state.start, state.end, '214214'});

      emit(state.copyWith(
        productList: state.productList + listProducts,
        loading: false,
        start: state.end,
        end: (state.end + 10) < state.maxLength
            ? state.end + 10
            : state.maxLength,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> getMaxLength() async {
    try {
      emit(state.copyWith(loading: true));


      log("Начало получения макса");

      int maxLength =
          await _favoriteProductsMockRepository.getMaxLengthProducts(
        start: 1,
        end: 1,
      );
      log("Получили макс");

      emit(state.copyWith(
        maxLength: maxLength,
        loading: false,
      ));

      log("заемитили");

    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
