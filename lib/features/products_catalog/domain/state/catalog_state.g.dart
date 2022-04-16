// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogState _$$_CatalogStateFromJson(Map<String, dynamic> json) =>
    _$_CatalogState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      productList: (json['productList'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      start: json['start'] as int? ?? 0,
      end: json['end'] as int? ?? 15,
      maxLength: json['maxLength'] as int? ?? 100,
    );

Map<String, dynamic> _$$_CatalogStateToJson(_$_CatalogState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'productList': instance.productList,
      'start': instance.start,
      'end': instance.end,
      'maxLength': instance.maxLength,
    };
