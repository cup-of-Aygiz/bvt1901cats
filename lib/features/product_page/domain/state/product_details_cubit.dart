import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';
import 'package:bvt1901_practice/features/product_page/domain/product_details_repository.dart';
import 'package:bvt1901_practice/features/product_page/domain/state/product_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../../di/service_locator.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit()
      : super(
          const ProductDetailsState(),
        );

  ProductDetailsRepository get _productDetailsRepository => getIt();

  void init(int id) async {
    await loadProductDetails(id);
  }

  Future<void> loadProductDetails(int id) async {
    try {
      emit(state.copyWith(loading: true));

      ProductDetailsEntity product =
      await _productDetailsRepository.getProductDetails(id: id);

      emit(state.copyWith(productDetailsEntity: product));
      emit(state.copyWith(loading: false));
    }
    on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
