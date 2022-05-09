// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteProductState _$FavoriteProductStateFromJson(Map<String, dynamic> json) {
  return _FavoriteProductState.fromJson(json);
}

/// @nodoc
class _$FavoriteProductStateTearOff {
  const _$FavoriteProductStateTearOff();

  _FavoriteProductState call(
      {bool loading = false,
      ErrorModel? error,
      List<ProductEntity> productList = const [],
      int start = 0,
      int end = 15,
      int maxLength = 100}) {
    return _FavoriteProductState(
      loading: loading,
      error: error,
      productList: productList,
      start: start,
      end: end,
      maxLength: maxLength,
    );
  }

  FavoriteProductState fromJson(Map<String, Object> json) {
    return FavoriteProductState.fromJson(json);
  }
}

/// @nodoc
const $FavoriteProductState = _$FavoriteProductStateTearOff();

/// @nodoc
mixin _$FavoriteProductState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  /// максимальное кол-во продуктов
  int get maxLength => throw _privateConstructorUsedError;

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
  $Res call(
      {bool loading,
      ErrorModel? error,
      List<ProductEntity> productList,
      int start,
      int end,
      int maxLength});

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
    Object? start = freezed,
    Object? end = freezed,
    Object? maxLength = freezed,
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
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$FavoriteProductStateCopyWith<$Res>
    implements $FavoriteProductStateCopyWith<$Res> {
  factory _$FavoriteProductStateCopyWith(_FavoriteProductState value,
          $Res Function(_FavoriteProductState) then) =
      __$FavoriteProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      ErrorModel? error,
      List<ProductEntity> productList,
      int start,
      int end,
      int maxLength});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$FavoriteProductStateCopyWithImpl<$Res>
    extends _$FavoriteProductStateCopyWithImpl<$Res>
    implements _$FavoriteProductStateCopyWith<$Res> {
  __$FavoriteProductStateCopyWithImpl(
      _FavoriteProductState _value, $Res Function(_FavoriteProductState) _then)
      : super(_value, (v) => _then(v as _FavoriteProductState));

  @override
  _FavoriteProductState get _value => super._value as _FavoriteProductState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_FavoriteProductState(
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
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteProductState implements _FavoriteProductState {
  const _$_FavoriteProductState(
      {this.loading = false,
      this.error,
      this.productList = const [],
      this.start = 0,
      this.end = 15,
      this.maxLength = 100});

  factory _$_FavoriteProductState.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteProductStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final ErrorModel? error;
  @JsonKey(defaultValue: const [])
  @override
  final List<ProductEntity> productList;
  @JsonKey(defaultValue: 0)
  @override
  final int start;
  @JsonKey(defaultValue: 15)
  @override
  final int end;
  @JsonKey(defaultValue: 100)
  @override

  /// максимальное кол-во продуктов
  final int maxLength;

  @override
  String toString() {
    return 'FavoriteProductState(loading: $loading, error: $error, productList: $productList, start: $start, end: $end, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteProductState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.productList, productList) ||
                const DeepCollectionEquality()
                    .equals(other.productList, productList)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(productList) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$FavoriteProductStateCopyWith<_FavoriteProductState> get copyWith =>
      __$FavoriteProductStateCopyWithImpl<_FavoriteProductState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteProductStateToJson(this);
  }
}

abstract class _FavoriteProductState implements FavoriteProductState {
  const factory _FavoriteProductState(
      {bool loading,
      ErrorModel? error,
      List<ProductEntity> productList,
      int start,
      int end,
      int maxLength}) = _$_FavoriteProductState;

  factory _FavoriteProductState.fromJson(Map<String, dynamic> json) =
      _$_FavoriteProductState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  @override
  int get start => throw _privateConstructorUsedError;
  @override
  int get end => throw _privateConstructorUsedError;
  @override

  /// максимальное кол-во продуктов
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteProductStateCopyWith<_FavoriteProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
