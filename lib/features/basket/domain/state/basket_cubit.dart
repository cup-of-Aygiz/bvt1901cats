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


  final BasketMockRepository _favoriteProductsMockRepository =  BasketMockRepository();

  void init() async {
    await getMaxLength();
    await loadProducts();
  }

  Future<void> loadProducts() async {
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
