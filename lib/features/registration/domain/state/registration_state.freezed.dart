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
      dynamic error,
      String firstName = '',
      String middleName = '',
      String lastName = '',
      String phone = '',
      String password = ''}) {
    return _RegistrationState(
      loading: loading,
      error: error,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      phone: phone,
      password: password,
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
  dynamic get error => throw _privateConstructorUsedError;

  /// имя
  String get firstName => throw _privateConstructorUsedError;

  /// отчество
  String get middleName => throw _privateConstructorUsedError;

  /// фамилия
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

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
  $Res call(
      {bool loading,
      dynamic error,
      String firstName,
      String middleName,
      String lastName,
      String phone,
      String password});
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
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$RegistrationStateCopyWith(
          _RegistrationState value, $Res Function(_RegistrationState) then) =
      __$RegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      dynamic error,
      String firstName,
      String middleName,
      String lastName,
      String phone,
      String password});
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
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_RegistrationState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationState implements _RegistrationState {
  const _$_RegistrationState(
      {this.loading = false,
      this.error,
      this.firstName = '',
      this.middleName = '',
      this.lastName = '',
      this.phone = '',
      this.password = ''});

  factory _$_RegistrationState.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final dynamic error;
  @JsonKey(defaultValue: '')
  @override

  /// имя
  final String firstName;
  @JsonKey(defaultValue: '')
  @override

  /// отчество
  final String middleName;
  @JsonKey(defaultValue: '')
  @override

  /// фамилия
  final String lastName;
  @JsonKey(defaultValue: '')
  @override
  final String phone;
  @JsonKey(defaultValue: '')
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationState(loading: $loading, error: $error, firstName: $firstName, middleName: $middleName, lastName: $lastName, phone: $phone, password: $password)';
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
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password);

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
      dynamic error,
      String firstName,
      String middleName,
      String lastName,
      String phone,
      String password}) = _$_RegistrationState;

  factory _RegistrationState.fromJson(Map<String, dynamic> json) =
      _$_RegistrationState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override

  /// имя
  String get firstName => throw _privateConstructorUsedError;
  @override

  /// отчество
  String get middleName => throw _privateConstructorUsedError;
  @override

  /// фамилия
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationStateCopyWith<_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
