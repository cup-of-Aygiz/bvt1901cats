// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addresses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressesState _$AddressesStateFromJson(Map<String, dynamic> json) {
  return _AddressesState.fromJson(json);
}

/// @nodoc
mixin _$AddressesState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<AddressEntity> get addressesList => throw _privateConstructorUsedError;
  AddressEntity? get favoriteAddresses => throw _privateConstructorUsedError;

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
      {bool loading,
      ErrorModel? error,
      List<AddressEntity> addressesList,
      AddressEntity? favoriteAddresses});

  $ErrorModelCopyWith<$Res>? get error;
  $AddressEntityCopyWith<$Res>? get favoriteAddresses;
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
    Object? favoriteAddresses = freezed,
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
      favoriteAddresses: favoriteAddresses == freezed
          ? _value.favoriteAddresses
          : favoriteAddresses // ignore: cast_nullable_to_non_nullable
              as AddressEntity?,
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
  $AddressEntityCopyWith<$Res>? get favoriteAddresses {
    if (_value.favoriteAddresses == null) {
      return null;
    }

    return $AddressEntityCopyWith<$Res>(_value.favoriteAddresses!, (value) {
      return _then(_value.copyWith(favoriteAddresses: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddressesStateCopyWith<$Res>
    implements $AddressesStateCopyWith<$Res> {
  factory _$$_AddressesStateCopyWith(
          _$_AddressesState value, $Res Function(_$_AddressesState) then) =
      __$$_AddressesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      ErrorModel? error,
      List<AddressEntity> addressesList,
      AddressEntity? favoriteAddresses});

  @override
  $ErrorModelCopyWith<$Res>? get error;
  @override
  $AddressEntityCopyWith<$Res>? get favoriteAddresses;
}

/// @nodoc
class __$$_AddressesStateCopyWithImpl<$Res>
    extends _$AddressesStateCopyWithImpl<$Res>
    implements _$$_AddressesStateCopyWith<$Res> {
  __$$_AddressesStateCopyWithImpl(
      _$_AddressesState _value, $Res Function(_$_AddressesState) _then)
      : super(_value, (v) => _then(v as _$_AddressesState));

  @override
  _$_AddressesState get _value => super._value as _$_AddressesState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? addressesList = freezed,
    Object? favoriteAddresses = freezed,
  }) {
    return _then(_$_AddressesState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      addressesList: addressesList == freezed
          ? _value._addressesList
          : addressesList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
      favoriteAddresses: favoriteAddresses == freezed
          ? _value.favoriteAddresses
          : favoriteAddresses // ignore: cast_nullable_to_non_nullable
              as AddressEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressesState implements _AddressesState {
  const _$_AddressesState(
      {this.loading = false,
      this.error,
      final List<AddressEntity> addressesList = const [],
      this.favoriteAddresses})
      : _addressesList = addressesList;

  factory _$_AddressesState.fromJson(Map<String, dynamic> json) =>
      _$$_AddressesStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  final ErrorModel? error;
  final List<AddressEntity> _addressesList;
  @override
  @JsonKey()
  List<AddressEntity> get addressesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressesList);
  }

  @override
  final AddressEntity? favoriteAddresses;

  @override
  String toString() {
    return 'AddressesState(loading: $loading, error: $error, addressesList: $addressesList, favoriteAddresses: $favoriteAddresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressesState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._addressesList, _addressesList) &&
            const DeepCollectionEquality()
                .equals(other.favoriteAddresses, favoriteAddresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_addressesList),
      const DeepCollectionEquality().hash(favoriteAddresses));

  @JsonKey(ignore: true)
  @override
  _$$_AddressesStateCopyWith<_$_AddressesState> get copyWith =>
      __$$_AddressesStateCopyWithImpl<_$_AddressesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressesStateToJson(this);
  }
}

abstract class _AddressesState implements AddressesState {
  const factory _AddressesState(
      {final bool loading,
      final ErrorModel? error,
      final List<AddressEntity> addressesList,
      final AddressEntity? favoriteAddresses}) = _$_AddressesState;

  factory _AddressesState.fromJson(Map<String, dynamic> json) =
      _$_AddressesState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  List<AddressEntity> get addressesList => throw _privateConstructorUsedError;
  @override
  AddressEntity? get favoriteAddresses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressesStateCopyWith<_$_AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}
