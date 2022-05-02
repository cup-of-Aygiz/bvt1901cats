// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
class _$ProductEntityTearOff {
  const _$ProductEntityTearOff();

  _ProductEntity call(
      {int id = -1,
      String image = '',
      String volume = '',
      String name = '',
      String price = '',
      int amount = 0}) {
    return _ProductEntity(
      id: id,
      image: image,
      volume: volume,
      name: name,
      price: price,
      amount: amount,
    );
  }

  ProductEntity fromJson(Map<String, Object> json) {
    return ProductEntity.fromJson(json);
  }
}

/// @nodoc
const $ProductEntity = _$ProductEntityTearOff();

/// @nodoc
mixin _$ProductEntity {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get volume => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String image,
      String volume,
      String name,
      String price,
      int amount});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  final ProductEntity _value;
  // ignore: unused_field
  final $Res Function(ProductEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? volume = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(
          _ProductEntity value, $Res Function(_ProductEntity) then) =
      __$ProductEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String image,
      String volume,
      String name,
      String price,
      int amount});
}

/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(
      _ProductEntity _value, $Res Function(_ProductEntity) _then)
      : super(_value, (v) => _then(v as _ProductEntity));

  @override
  _ProductEntity get _value => super._value as _ProductEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? volume = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? amount = freezed,
  }) {
    return _then(_ProductEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductEntity implements _ProductEntity {
  const _$_ProductEntity(
      {this.id = -1,
      this.image = '',
      this.volume = '',
      this.name = '',
      this.price = '',
      this.amount = 0});

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

  @JsonKey(defaultValue: -1)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String image;
  @JsonKey(defaultValue: '')
  @override
  final String volume;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String price;
  @JsonKey(defaultValue: 0)
  @override
  final int amount;

  @override
  String toString() {
    return 'ProductEntity(id: $id, image: $image, volume: $volume, name: $name, price: $price, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$ProductEntityCopyWith<_ProductEntity> get copyWith =>
      __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductEntityToJson(this);
  }
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(
      {int id,
      String image,
      String volume,
      String name,
      String price,
      int amount}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get volume => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductEntityCopyWith<_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
