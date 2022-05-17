// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsState _$ProductDetailsStateFromJson(Map<String, dynamic> json) {
  return _ProductDetailsState.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  ProductDetailsEntity? get productDetailsEntity =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      ErrorModel? error,
      ProductDetailsEntity? productDetailsEntity});

  $ErrorModelCopyWith<$Res>? get error;
  $ProductDetailsEntityCopyWith<$Res>? get productDetailsEntity;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  final ProductDetailsState _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productDetailsEntity = freezed,
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
      productDetailsEntity: productDetailsEntity == freezed
          ? _value.productDetailsEntity
          : productDetailsEntity // ignore: cast_nullable_to_non_nullable
              as ProductDetailsEntity?,
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

  @override
  $ProductDetailsEntityCopyWith<$Res>? get productDetailsEntity {
    if (_value.productDetailsEntity == null) {
      return null;
    }

    return $ProductDetailsEntityCopyWith<$Res>(_value.productDetailsEntity!,
        (value) {
      return _then(_value.copyWith(productDetailsEntity: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductDetailsStateCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$_ProductDetailsStateCopyWith(_$_ProductDetailsState value,
          $Res Function(_$_ProductDetailsState) then) =
      __$$_ProductDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      ErrorModel? error,
      ProductDetailsEntity? productDetailsEntity});

  @override
  $ErrorModelCopyWith<$Res>? get error;
  @override
  $ProductDetailsEntityCopyWith<$Res>? get productDetailsEntity;
}

/// @nodoc
class __$$_ProductDetailsStateCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res>
    implements _$$_ProductDetailsStateCopyWith<$Res> {
  __$$_ProductDetailsStateCopyWithImpl(_$_ProductDetailsState _value,
      $Res Function(_$_ProductDetailsState) _then)
      : super(_value, (v) => _then(v as _$_ProductDetailsState));

  @override
  _$_ProductDetailsState get _value => super._value as _$_ProductDetailsState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productDetailsEntity = freezed,
  }) {
    return _then(_$_ProductDetailsState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      productDetailsEntity: productDetailsEntity == freezed
          ? _value.productDetailsEntity
          : productDetailsEntity // ignore: cast_nullable_to_non_nullable
              as ProductDetailsEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsState implements _ProductDetailsState {
  const _$_ProductDetailsState(
      {this.loading = false, this.error, this.productDetailsEntity});

  factory _$_ProductDetailsState.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  final ErrorModel? error;
  @override
  final ProductDetailsEntity? productDetailsEntity;

  @override
  String toString() {
    return 'ProductDetailsState(loading: $loading, error: $error, productDetailsEntity: $productDetailsEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.productDetailsEntity, productDetailsEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(productDetailsEntity));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDetailsStateCopyWith<_$_ProductDetailsState> get copyWith =>
      __$$_ProductDetailsStateCopyWithImpl<_$_ProductDetailsState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsStateToJson(this);
  }
}

abstract class _ProductDetailsState implements ProductDetailsState {
  const factory _ProductDetailsState(
          {final bool loading,
          final ErrorModel? error,
          final ProductDetailsEntity? productDetailsEntity}) =
      _$_ProductDetailsState;

  factory _ProductDetailsState.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  ProductDetailsEntity? get productDetailsEntity =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsStateCopyWith<_$_ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
