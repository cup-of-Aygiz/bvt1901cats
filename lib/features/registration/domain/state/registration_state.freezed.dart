// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationState _$RegistrationStateFromJson(Map<String, dynamic> json) {
  return _RegistrationState.fromJson(json);
}

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
abstract class _$$_RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$_RegistrationStateCopyWith(_$_RegistrationState value,
          $Res Function(_$_RegistrationState) then) =
      __$$_RegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, ErrorModel? error, PersonEntity personEntity});

  @override
  $ErrorModelCopyWith<$Res>? get error;
  @override
  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class __$$_RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$$_RegistrationStateCopyWith<$Res> {
  __$$_RegistrationStateCopyWithImpl(
      _$_RegistrationState _value, $Res Function(_$_RegistrationState) _then)
      : super(_value, (v) => _then(v as _$_RegistrationState));

  @override
  _$_RegistrationState get _value => super._value as _$_RegistrationState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? personEntity = freezed,
  }) {
    return _then(_$_RegistrationState(
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

  @override
  @JsonKey()
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
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.personEntity, personEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(personEntity));

  @JsonKey(ignore: true)
  @override
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      __$$_RegistrationStateCopyWithImpl<_$_RegistrationState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationStateToJson(this);
  }
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {final bool loading,
      final ErrorModel? error,
      required final PersonEntity personEntity}) = _$_RegistrationState;

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
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
