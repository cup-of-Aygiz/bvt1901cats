// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  int get orderNumber => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  String get deliveryAddress => throw _privateConstructorUsedError;
  List<ProductDetailsEntity> get products => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call(
      {int orderNumber,
      String orderDate,
      String deliveryAddress,
      List<ProductDetailsEntity> products,
      double price});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? deliveryAddress = freezed,
    Object? products = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailsEntity>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$_OrderEntityCopyWith(
          _$_OrderEntity value, $Res Function(_$_OrderEntity) then) =
      __$$_OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int orderNumber,
      String orderDate,
      String deliveryAddress,
      List<ProductDetailsEntity> products,
      double price});
}

/// @nodoc
class __$$_OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$$_OrderEntityCopyWith<$Res> {
  __$$_OrderEntityCopyWithImpl(
      _$_OrderEntity _value, $Res Function(_$_OrderEntity) _then)
      : super(_value, (v) => _then(v as _$_OrderEntity));

  @override
  _$_OrderEntity get _value => super._value as _$_OrderEntity;

  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? deliveryAddress = freezed,
    Object? products = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_OrderEntity(
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailsEntity>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  const _$_OrderEntity(
      {this.orderNumber = 0,
      this.orderDate = '',
      this.deliveryAddress = '',
      final List<ProductDetailsEntity> products = const [],
      this.price = 0})
      : _products = products;

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  @JsonKey()
  final int orderNumber;
  @override
  @JsonKey()
  final String orderDate;
  @override
  @JsonKey()
  final String deliveryAddress;
  final List<ProductDetailsEntity> _products;
  @override
  @JsonKey()
  List<ProductDetailsEntity> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'OrderEntity(orderNumber: $orderNumber, orderDate: $orderDate, deliveryAddress: $deliveryAddress, products: $products, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderEntity &&
            const DeepCollectionEquality()
                .equals(other.orderNumber, orderNumber) &&
            const DeepCollectionEquality().equals(other.orderDate, orderDate) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddress, deliveryAddress) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderNumber),
      const DeepCollectionEquality().hash(orderDate),
      const DeepCollectionEquality().hash(deliveryAddress),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      __$$_OrderEntityCopyWithImpl<_$_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(this);
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {final int orderNumber,
      final String orderDate,
      final String deliveryAddress,
      final List<ProductDetailsEntity> products,
      final double price}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  int get orderNumber => throw _privateConstructorUsedError;
  @override
  String get orderDate => throw _privateConstructorUsedError;
  @override
  String get deliveryAddress => throw _privateConstructorUsedError;
  @override
  List<ProductDetailsEntity> get products => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
