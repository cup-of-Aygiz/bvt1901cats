
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/domain/models/error_model.dart';
import '../../../../../features/products_catalog/domain/entity/product_entity.dart';

part 'like_button_state.freezed.dart';
part 'like_button_state.g.dart';
@freezed
class LikeButtonState with _$LikeButtonState{

  const factory LikeButtonState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    @Default([]) List<ProductEntity> productList,

})=_LikeButtonState;

  factory LikeButtonState.fromJson(Map<String,dynamic> json)=>_$LikeButtonStateFromJson(json);

}