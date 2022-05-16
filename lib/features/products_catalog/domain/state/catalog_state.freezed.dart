// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogState _$CatalogStateFromJson(Map<String, dynamic> json) {
  return _CatalogState.fromJson(json);
}

/// @nodoc
mixin _$CatalogState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<ProductEntity> get productList => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  /// максимальное кол-во продуктов
  int get maxLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res>;
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
class _$CatalogStateCopyWithImpl<$Res> implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  final CatalogState _value;
  // ignore: unused_field
  final $Res Function(CatalogState) _then;

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
abstract class _$$_CatalogStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory _$$_CatalogStateCopyWith(
          _$_CatalogState value, $Res Function(_$_CatalogState) then) =
      __$$_CatalogStateCopyWithImpl<$Res>;
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
class __$$_CatalogStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res>
    implements _$$_CatalogStateCopyWith<$Res> {
  __$$_CatalogStateCopyWithImpl(
      _$_CatalogState _value, $Res Function(_$_CatalogState) _then)
      : super(_value, (v) => _then(v as _$_CatalogState));

  @override
  _$_CatalogState get _value => super._value as _$_CatalogState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? productList = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_$_CatalogState(
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
class _$_CatalogState implements _CatalogState {
  const _$_CatalogState(
      {this.loading = false,
      this.error,
      final List<ProductEntity> productList = const [],
      this.start = 0,
      this.end = 15,
      this.maxLength = 100})
      : _productList = productList;

  factory _$_CatalogState.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogStateFromJson(json);

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
  final int start;
  @override
  @JsonKey()
  final int end;

  /// максимальное кол-во продуктов
  @override
  @JsonKey()
  final int maxLength;

  @override
  String toString() {
    return 'CatalogState(loading: $loading, error: $error, productList: $productList, start: $start, end: $end, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      __$$_CatalogStateCopyWithImpl<_$_CatalogState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogStateToJson(this);
  }
}

abstract class _CatalogState implements CatalogState {
  const factory _CatalogState(
      {final bool loading,
      final ErrorModel? error,
      final List<ProductEntity> productList,
      final int start,
      final int end,
      final int maxLength}) = _$_CatalogState;

  factory _CatalogState.fromJson(Map<String, dynamic> json) =
      _$_CatalogState.fromJson;

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
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
