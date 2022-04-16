import 'package:bvt1901_practice/app/domain/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity/product_entity.dart';
part 'catalog_state.freezed.dart';
part 'catalog_state.g.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<ProductEntity> productList,
    @Default(0) int start,
    @Default(15) int end,
    /// максимальное кол-во продуктов
    @Default(100) int maxLength,
  }) = _CatalogState;
  factory CatalogState.fromJson(Map<String, dynamic> json) =>
      _$CatalogStateFromJson(json);
}
