import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../product_page/domain/entity/product_details_entity.dart';

part 'basket_state.freezed.dart';

part 'basket_state.g.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<ProductDetailsEntity> productList,
    @Default(0) double totalPrice,
  }) = _BasketState;

  factory BasketState.fromJson(Map<String, dynamic> json) =>
      _$BasketStateFromJson(json);
}
