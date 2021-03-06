// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteProductState _$FavoriteProductStateFromJson(Map<String, dynamic> json) {
  return _FavoriteProductState.fromJson(json);
}

/// @nodoc
mixin _$FavoriteProductState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<ProductEntity> get productList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteProductStateCopyWith<FavoriteProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteProductStateCopyWith<$Res> {
  factory $FavoriteProductStateCopyWith(FavoriteProductState value,
          $Res Function(FavoriteProductState) then) =
      _$FavoriteProductStateCopyWithImpl<$Res>;
  $Res call({bool loading, ErrorModel? error, List<ProductEntity> productList});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$FavoriteProductStateCopyWithImpl<$Res>
    implements $FavoriteProductStateCopyWith<$Res> {
  _$FavoriteProductStateCopyWithImpl(this._value, this._then);

  final FavoriteProductState _value;
  // ignore: unused_field
  final $Res Function(FavoriteProductState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
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
abstract class _$$_FavoriteProductStateCopyWith<$Res>
    implements $FavoriteProductStateCopyWith<$Res> {
  factory _$$_FavoriteProductStateCopyWith(_$_FavoriteProductState value,
          $Res Function(_$_FavoriteProductState) then) =
      __$$_FavoriteProductStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, ErrorModel? error, List<ProductEntity> productList});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_FavoriteProductStateCopyWithImpl<$Res>
    extends _$FavoriteProductStateCopyWithImpl<$Res>
    implements _$$_FavoriteProductStateCopyWith<$Res> {
  __$$_FavoriteProductStateCopyWithImpl(_$_FavoriteProductState _value,
      $Res Function(_$_FavoriteProductState) _then)
      : super(_value, (v) => _then(v as _$_FavoriteProductState));

  @override
  _$_FavoriteProductState get _value => super._value as _$_FavoriteProductState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
  }) {
    return _then(_$_FavoriteProductState(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteProductState implements _FavoriteProductState {
  const _$_FavoriteProductState(
      {this.loading = false,
      this.error,
      final List<ProductEntity> productList = const []})
      : _productList = productList;

  factory _$_FavoriteProductState.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteProductStateFromJson(json);

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
  String toString() {
    return 'FavoriteProductState(loading: $loading, error: $error, productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteProductState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteProductStateCopyWith<_$_FavoriteProductState> get copyWith =>
      __$$_FavoriteProductStateCopyWithImpl<_$_FavoriteProductState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteProductStateToJson(this);
  }
}

abstract class _FavoriteProductState implements FavoriteProductState {
  const factory _FavoriteProductState(
      {final bool loading,
      final ErrorModel? error,
      final List<ProductEntity> productList}) = _$_FavoriteProductState;

  factory _FavoriteProductState.fromJson(Map<String, dynamic> json) =
      _$_FavoriteProductState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteProductStateCopyWith<_$_FavoriteProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
