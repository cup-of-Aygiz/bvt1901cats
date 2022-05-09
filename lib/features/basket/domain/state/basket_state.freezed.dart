// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketState _$BasketStateFromJson(Map<String, dynamic> json) {
  return _BasketState.fromJson(json);
}

/// @nodoc
class _$BasketStateTearOff {
  const _$BasketStateTearOff();

  _BasketState call(
      {bool loading = false,
      ErrorModel? error,
      List<ProductEntity> productList = const [],
      int start = 0,
      int end = 10,
      int maxLength = 20}) {
    return _BasketState(
      loading: loading,
      error: error,
      productList: productList,
      start: start,
      end: end,
      maxLength: maxLength,
    );
  }

  BasketState fromJson(Map<String, Object> json) {
    return BasketState.fromJson(json);
  }
}

/// @nodoc
const $BasketState = _$BasketStateTearOff();

/// @nodoc
mixin _$BasketState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;

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
      int start,
      int end,
      int maxLength});

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
abstract class _$BasketStateCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$BasketStateCopyWith(
          _BasketState value, $Res Function(_BasketState) then) =
      __$BasketStateCopyWithImpl<$Res>;
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
class __$BasketStateCopyWithImpl<$Res> extends _$BasketStateCopyWithImpl<$Res>
    implements _$BasketStateCopyWith<$Res> {
  __$BasketStateCopyWithImpl(
      _BasketState _value, $Res Function(_BasketState) _then)
      : super(_value, (v) => _then(v as _BasketState));

  @override
  _BasketState get _value => super._value as _BasketState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_BasketState(
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
class _$_BasketState implements _BasketState {
  const _$_BasketState(
      {this.loading = false,
      this.error,
      this.productList = const [],
      this.start = 0,
      this.end = 10,
      this.maxLength = 20});

  factory _$_BasketState.fromJson(Map<String, dynamic> json) =>
      _$$_BasketStateFromJson(json);

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
  @JsonKey(defaultValue: 10)
  @override
  final int end;
  @JsonKey(defaultValue: 20)
  @override
  final int maxLength;

  @override
  String toString() {
    return 'BasketState(loading: $loading, error: $error, productList: $productList, start: $start, end: $end, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasketState &&
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
  _$BasketStateCopyWith<_BasketState> get copyWith =>
      __$BasketStateCopyWithImpl<_BasketState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketStateToJson(this);
  }
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(
      {bool loading,
      ErrorModel? error,
      List<ProductEntity> productList,
      int start,
      int end,
      int maxLength}) = _$_BasketState;

  factory _BasketState.fromJson(Map<String, dynamic> json) =
      _$_BasketState.fromJson;

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
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BasketStateCopyWith<_BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}
