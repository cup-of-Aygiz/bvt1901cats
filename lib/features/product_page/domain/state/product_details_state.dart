import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/domain/models/error_model.dart';

part 'product_details_state.freezed.dart';
part 'product_details_state.g.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState{

  const factory ProductDetailsState({
    @Default(false) final bool loading,
    final ErrorModel? error,
    final ProductDetailsEntity? productDetailsEntity,

})=_ProductDetailsState;

  factory ProductDetailsState.fromJson(Map<String,dynamic> json)=>_$ProductDetailsStateFromJson(json);
}