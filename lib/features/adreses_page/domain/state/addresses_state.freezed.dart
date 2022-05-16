// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addresses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressesState _$AddressesStateFromJson(Map<String, dynamic> json) {
  return _AddressesState.fromJson(json);
}

/// @nodoc
class _$AddressesStateTearOff {
  const _$AddressesStateTearOff();

  _AddressesState call(
      {bool loading = false,
      ErrorModel? error,
      List<AddressEntity> addressesList = const []}) {
    return _AddressesState(
      loading: loading,
      error: error,
      addressesList: addressesList,
    );
  }

  AddressesState fromJson(Map<String, Object> json) {
    return AddressesState.fromJson(json);
  }
}

/// @nodoc
const $AddressesState = _$AddressesStateTearOff();

/// @nodoc
mixin _$AddressesState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<AddressEntity> get addressesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressesStateCopyWith<AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesStateCopyWith<$Res> {
  factory $AddressesStateCopyWith(
          AddressesState value, $Res Function(AddressesState) then) =
      _$AddressesStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading, ErrorModel? error, List<AddressEntity> addressesList});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$AddressesStateCopyWithImpl<$Res>
    implements $AddressesStateCopyWith<$Res> {
  _$AddressesStateCopyWithImpl(this._value, this._then);

  final AddressesState _value;
  // ignore: unused_field
  final $Res Function(AddressesState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? addressesList = freezed,
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
      addressesList: addressesList == freezed
          ? _value.addressesList
          : addressesList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
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
abstract class _$AddressesStateCopyWith<$Res>
    implements $AddressesStateCopyWith<$Res> {
  factory _$AddressesStateCopyWith(
          _AddressesState value, $Res Function(_AddressesState) then) =
      __$AddressesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading, ErrorModel? error, List<AddressEntity> addressesList});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$AddressesStateCopyWithImpl<$Res>
    extends _$AddressesStateCopyWithImpl<$Res>
    implements _$AddressesStateCopyWith<$Res> {
  __$AddressesStateCopyWithImpl(
      _AddressesState _value, $Res Function(_AddressesState) _then)
      : super(_value, (v) => _then(v as _AddressesState));

  @override
  _AddressesState get _value => super._value as _AddressesState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? addressesList = freezed,
  }) {
    return _then(_AddressesState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      addressesList: addressesList == freezed
          ? _value.addressesList
          : addressesList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressesState implements _AddressesState {
  const _$_AddressesState(
      {this.loading = false, this.error, this.addressesList = const []});

  factory _$_AddressesState.fromJson(Map<String, dynamic> json) =>
      _$$_AddressesStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final ErrorModel? error;
  @JsonKey(defaultValue: const [])
  @override
  final List<AddressEntity> addressesList;

  @override
  String toString() {
    return 'AddressesState(loading: $loading, error: $error, addressesList: $addressesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressesState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.addressesList, addressesList) ||
                const DeepCollectionEquality()
                    .equals(other.addressesList, addressesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(addressesList);

  @JsonKey(ignore: true)
  @override
  _$AddressesStateCopyWith<_AddressesState> get copyWith =>
      __$AddressesStateCopyWithImpl<_AddressesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressesStateToJson(this);
  }
}

abstract class _AddressesState implements AddressesState {
  const factory _AddressesState(
      {bool loading,
      ErrorModel? error,
      List<AddressEntity> addressesList}) = _$_AddressesState;

  factory _AddressesState.fromJson(Map<String, dynamic> json) =
      _$_AddressesState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  List<AddressEntity> get addressesList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressesStateCopyWith<_AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}
