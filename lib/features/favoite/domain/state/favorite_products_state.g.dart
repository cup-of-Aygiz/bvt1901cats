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
          const [],
      start: json['start'] as int? ?? 0,
      end: json['end'] as int? ?? 15,
      maxLength: json['maxLength'] as int? ?? 100,
    );

Map<String, dynamic> _$$_FavoriteProductStateToJson(
        _$_FavoriteProductState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'productList': instance.productList,
      'start': instance.start,
      'end': instance.end,
      'maxLength': instance.maxLength,
    };
