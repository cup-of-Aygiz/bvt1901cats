// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_products_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteProductState _$$_FavoriteProductStateFromJson(
        Map<String, dynamic> json) =>
    _$_FavoriteProductState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      productList: (json['productList'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_FavoriteProductStateToJson(
        _$_FavoriteProductState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'productList': instance.productList,
    };
