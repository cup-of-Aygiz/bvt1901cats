// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsState _$$_ProductDetailsStateFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      productDetailsEntity: json['productDetailsEntity'] == null
          ? null
          : ProductDetailsEntity.fromJson(
              json['productDetailsEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDetailsStateToJson(
        _$_ProductDetailsState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'productDetailsEntity': instance.productDetailsEntity,
    };
