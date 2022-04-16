// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {bool loading = false, ErrorModel? error, ProfileEntity? profileEntity}) {
    return _LoginState(
      loading: loading,
      error: error,
      profileEntity: profileEntity,
    );
  }

  LoginState fromJson(Map<String, Object> json) {
    return LoginState.fromJson(json);
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  ProfileEntity? get profileEntity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({bool loading, ErrorModel? error, ProfileEntity? profileEntity});

  $ErrorModelCopyWith<$Res>? get error;
  $ProfileEntityCopyWith<$Res>? get profileEntity;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? profileEntity = freezed,
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
      profileEntity: profileEntity == freezed
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
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
  $ProfileEntityCopyWith<$Res>? get profileEntity {
    if (_value.profileEntity == null) {
      return null;
    }

    return $ProfileEntityCopyWith<$Res>(_value.profileEntity!, (value) {
      return _then(_value.copyWith(profileEntity: value));
    });
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, ErrorModel? error, ProfileEntity? profileEntity});

  @override
  $ErrorModelCopyWith<$Res>? get error;
  @override
  $ProfileEntityCopyWith<$Res>? get profileEntity;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? profileEntity = freezed,
  }) {
    return _then(_LoginState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      profileEntity: profileEntity == freezed
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginState implements _LoginState {
  const _$_LoginState({this.loading = false, this.error, this.profileEntity});

  factory _$_LoginState.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final ErrorModel? error;
  @override
  final ProfileEntity? profileEntity;

  @override
  String toString() {
    return 'LoginState(loading: $loading, error: $error, profileEntity: $profileEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.profileEntity, profileEntity) ||
                const DeepCollectionEquality()
                    .equals(other.profileEntity, profileEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(profileEntity);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateToJson(this);
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {bool loading,
      ErrorModel? error,
      ProfileEntity? profileEntity}) = _$_LoginState;

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$_LoginState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  ErrorModel? get error => throw _privateConstructorUsedError;
  @override
  ProfileEntity? get profileEntity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
