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
      int maxLength =
          await _favoriteProductsMockRepository.getMaxLengthProducts(
        start: 1,
        end: 1,
      );
      emit(state.copyWith(
        maxLength: maxLength,
        loading: false,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
