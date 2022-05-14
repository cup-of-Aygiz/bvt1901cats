import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';

part 'favorite_products_state.freezed.dart';

part 'favorite_products_state.g.dart';

@freezed
class FavoriteProductState with _$FavoriteProductState {
  const factory FavoriteProductState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<ProductEntity> productList,

  }) = _FavoriteProductState;

  factory FavoriteProductState.fromJson(Map<String, dynamic> json) =>
      _$FavoriteProductStateFromJson(json);
}
