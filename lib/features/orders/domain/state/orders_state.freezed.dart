// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersState _$OrdersStateFromJson(Map<String, dynamic> json) {
  return _OrdersState.fromJson(json);
}

/// @nodoc
mixin _$OrdersState {
  bool get loading => throw _privateConstructorUsedError;
  List<OrderEntity> get ordersList => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<OrderEntity> ordersList, ErrorModel? error});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? ordersList = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      ordersList: ordersList == freezed
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
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
abstract class _$$_OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$_OrdersStateCopyWith(
          _$_OrdersState value, $Res Function(_$_OrdersState) then) =
      __$$_OrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<OrderEntity> ordersList, ErrorModel? error});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_OrdersStateCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$$_OrdersStateCopyWith<$Res> {
  __$$_OrdersStateCopyWithImpl(
      _$_OrdersState _value, $Res Function(_$_OrdersState) _then)
      : super(_value, (v) => _then(v as _$_OrdersState));

  @override
  _$_OrdersState get _value => super._value as _$_OrdersState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? ordersList = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_OrdersState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      ordersList: ordersList == freezed
          ? _value._ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrdersState implements _OrdersState {
  const _$_OrdersState(
      {this.loading = false,
      required final List<OrderEntity> ordersList,
      this.error})
      : _ordersList = ordersList;

  factory _$_OrdersState.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  final List<OrderEntity> _ordersList;
  @override
  List<OrderEntity> get ordersList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersList);
  }

  @override
  final ErrorModel? error;

  @override
  String toString() {
    return 'OrdersState(loading: $loading, ordersList: $ordersList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other._ordersList, _ordersList) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(_ordersList),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      __$$_OrdersStateCopyWithImpl<_$_OrdersState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersStateToJson(this);
  }
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState(
      {final bool loading,
      required final List<OrderEntity> ordersList,
      final ErrorModel? error}) = _$_OrdersState;

  factory _OrdersState.fromJson(Map<String, dynamic> json) =
      _$_OrdersState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  List<OrderEntity> get ordersList => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
