// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketState _$BasketStateFromJson(Map<String, dynamic> json) {
  return _BasketState.fromJson(json);
}

/// @nodoc
mixin _$BasketState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      ErrorModel? error,
      List<ProductEntity> productList,
      double totalPrice});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res> implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  final BasketState _value;
  // ignore: unused_field
  final $Res Function(BasketState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ErrorModelCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorModelCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_BasketStateCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$_BasketStateCopyWith(
          _$_BasketState value, $Res Function(_$_BasketState) then) =
      __$$_BasketStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      ErrorModel? error,
      List<ProductEntity> productList,
      double totalPrice});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_BasketStateCopyWithImpl<$Res> extends _$BasketStateCopyWithImpl<$Res>
    implements _$$_BasketStateCopyWith<$Res> {
  __$$_BasketStateCopyWithImpl(
      _$_BasketState _value, $Res Function(_$_BasketState) _then)
      : super(_value, (v) => _then(v as _$_BasketState));

  @override
  _$_BasketState get _value => super._value as _$_BasketState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$_BasketState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      productList: productList == freezed
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketState implements _BasketState {
  const _$_BasketState(
      {this.loading = false,
      this.error,
      final List<ProductEntity> productList = const [],
      this.totalPrice = 0})
      : _productList = productList;

  factory _$_BasketState.fromJson(Map<String, dynamic> json) =>
      _$$_BasketStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  final ErrorModel? error;
  final List<ProductEntity> _productList;
  @override
  @JsonKey()
  List<ProductEntity> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  @JsonKey()
  final double totalPrice;

  @override
  String toString() {
    return 'BasketState(loading: $loading, error: $error, productList: $productList, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(totalPrice));

  @JsonKey(ignore: true)
  @override
  _$$_BasketStateCopyWith<_$_BasketState> get copyWith =>
      __$$_BasketStateCopyWithImpl<_$_BasketState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketStateToJson(this);
  }
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(
      {final bool loading,
      final ErrorModel? error,
      final List<ProductEntity> productList,
      final double totalPrice}) = _$_BasketState;

  factory _BasketState.fromJson(Map<String, dynamic> json) =
      _$_BasketState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  @override
  double get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BasketStateCopyWith<_$_BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}
