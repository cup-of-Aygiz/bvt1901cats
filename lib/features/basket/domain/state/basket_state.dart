
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';
import '../../../products_catalog/domain/entity/product_entity.dart';

part 'basket_state.freezed.dart';
part 'basket_state.g.dart';

@freezed
class BasketState with _$BasketState{

  const factory BasketState({

    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<ProductEntity> productList,
    @Default(0) int start,
    @Default(10) int end,
    @Default(20) int maxLength,

})=_BasketState;

  factory BasketState.fromJson(Map<String,dynamic> json)=>_$BasketStateFromJson(json);
}