
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';
part 'searcher_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<ProductEntity> productList,
    @Default(0) int start,
    @Default(15) int end,
    /// максимальное кол-во продуктов
    @Default(100) int maxLength,
  }) = _SearchState;
}
