import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../di/service_locator.dart';
import '../catalog_repository.dart';
import '../entity/product_entity.dart';
import 'catalog_state.dart';

@LazySingleton()
class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit() : super(const CatalogState());

  CatalogRepository get _catalogRepository => getIt();

  void init() async {
    await getMaxLength();
    await loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      if (!state.loading) {
        emit(state.copyWith(loading: true));
        List<ProductEntity> listProducts =
            await _catalogRepository.getProductList(
          start: state.start,
          end: state.end,
        );
        emit(state.copyWith(
          productList: state.productList + listProducts,
          start: state.end,
          end: (state.end + 10) < state.maxLength
              ? state.end + 10
              : state.maxLength,
        ));
        emit(state.copyWith(
          loading: false,
        ));
      }
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }

  Future<void> getMaxLength() async {
    try {
      emit(state.copyWith(loading: true));
      int maxLength = await _catalogRepository.getMaxLengthProducts(
        start: 1,
        end: 1,
      );
      emit(state.copyWith(
        maxLength: maxLength,
      ));
      emit(state.copyWith(
        loading: false,
      ));
    } on ErrorModel catch (e) {
      emit(state.copyWith(loading: false, error: e));
    }
  }
}
