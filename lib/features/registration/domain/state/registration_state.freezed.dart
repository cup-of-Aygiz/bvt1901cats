// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationState _$RegistrationStateFromJson(Map<String, dynamic> json) {
  return _RegistrationState.fromJson(json);
}

/// @nodoc
class _$RegistrationStateTearOff {
  const _$RegistrationStateTearOff();

  _RegistrationState call(
      {bool loading = false,
      ErrorModel? error,
      required PersonEntity personEntity}) {
    return _RegistrationState(
      loading: loading,
      error: error,
      personEntity: personEntity,
    );
  }

  RegistrationState fromJson(Map<String, Object> json) {
    return RegistrationState.fromJson(json);
  }
}

/// @nodoc
const $RegistrationState = _$RegistrationStateTearOff();

/// @nodoc
mixin _$RegistrationState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  PersonEntity get personEntity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res>;
  $Res call({bool loading, ErrorModel? error, PersonEntity personEntity});

  $ErrorModelCopyWith<$Res>? get error;
  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  final RegistrationState _value;
  // ignore: unused_field
  final $Res Function(RegistrationState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? personEntity = freezed,
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
      personEntity: personEntity == freezed
          ? _value.personEntity
          : personEntity // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
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
  $PersonEntityCopyWith<$Res> get personEntity {
    return $PersonEntityCopyWith<$Res>(_value.personEntity, (value) {
      return _then(_value.copyWith(personEntity: value));
    });
  }
}

/// @nodoc
abstract class _$RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$RegistrationStateCopyWith(
          _RegistrationState value, $Res Function(_RegistrationState) then) =
      __$RegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, ErrorModel? error, PersonEntity personEntity});

  @override
  $ErrorModelCopyWith<$Res>? get error;
  @override
  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class __$RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$RegistrationStateCopyWith<$Res> {
  __$RegistrationStateCopyWithImpl(
      _RegistrationState _value, $Res Function(_RegistrationState) _then)
      : super(_value, (v) => _then(v as _RegistrationState));

  @override
  _RegistrationState get _value => super._value as _RegistrationState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? personEntity = freezed,
  }) {
    return _then(_RegistrationState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      personEntity: personEntity == freezed
          ? _value.personEntity
          : personEntity // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationState implements _RegistrationState {
  const _$_RegistrationState(
      {this.loading = false, this.error, required this.personEntity});

  factory _$_RegistrationState.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final ErrorModel? error;
  @override
  final PersonEntity personEntity;

  @override
  String toString() {
    return 'RegistrationState(loading: $loading, error: $error, personEntity: $personEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.personEntity, personEntity) ||
                const DeepCollectionEquality()
                    .equals(other.personEntity, personEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(personEntity);

  @JsonKey(ignore: true)
  @override
  _$RegistrationStateCopyWith<_RegistrationState> get copyWith =>
      __$RegistrationStateCopyWithImpl<_RegistrationState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationStateToJson(this);
  }
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {bool loading,
      ErrorModel? error,
      required PersonEntity personEntity}) = _$_RegistrationState;

  factory _RegistrationState.fromJson(Map<String, dynamic> json) =
      _$_RegistrationState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  PersonEntity get personEntity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationStateCopyWith<_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
