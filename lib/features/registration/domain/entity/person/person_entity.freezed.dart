// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) {
  return _PersonEntity.fromJson(json);
}

/// @nodoc
class _$PersonEntityTearOff {
  const _$PersonEntityTearOff();

  _PersonEntity call(
      {String firstName = '',
      String lastName = '',
      String middleName = '',
      String phone = '',
      String password = ''}) {
    return _PersonEntity(
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      phone: phone,
      password: password,
    );
  }

  PersonEntity fromJson(Map<String, Object> json) {
    return PersonEntity.fromJson(json);
  }
}

/// @nodoc
const $PersonEntity = _$PersonEntityTearOff();

/// @nodoc
mixin _$PersonEntity {
  /// имя
  String get firstName => throw _privateConstructorUsedError;

  /// фамилия
  String get lastName => throw _privateConstructorUsedError;

  /// отчество
  String get middleName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonEntityCopyWith<PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonEntityCopyWith<$Res> {
  factory $PersonEntityCopyWith(
          PersonEntity value, $Res Function(PersonEntity) then) =
      _$PersonEntityCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String middleName,
      String phone,
      String password});
}

/// @nodoc
class _$PersonEntityCopyWithImpl<$Res> implements $PersonEntityCopyWith<$Res> {
  _$PersonEntityCopyWithImpl(this._value, this._then);

  final PersonEntity _value;
  // ignore: unused_field
  final $Res Function(PersonEntity) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
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
abstract class _$PersonEntityCopyWith<$Res>
    implements $PersonEntityCopyWith<$Res> {
  factory _$PersonEntityCopyWith(
          _PersonEntity value, $Res Function(_PersonEntity) then) =
      __$PersonEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String middleName,
      String phone,
      String password});
}

/// @nodoc
class __$PersonEntityCopyWithImpl<$Res> extends _$PersonEntityCopyWithImpl<$Res>
    implements _$PersonEntityCopyWith<$Res> {
  __$PersonEntityCopyWithImpl(
      _PersonEntity _value, $Res Function(_PersonEntity) _then)
      : super(_value, (v) => _then(v as _PersonEntity));

  @override
  _PersonEntity get _value => super._value as _PersonEntity;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_PersonEntity(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
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
class _$_PersonEntity implements _PersonEntity {
  const _$_PersonEntity(
      {this.firstName = '',
      this.lastName = '',
      this.middleName = '',
      this.phone = '',
      this.password = ''});

  factory _$_PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PersonEntityFromJson(json);

  @JsonKey(defaultValue: '')
  @override

  /// имя
  final String firstName;
  @JsonKey(defaultValue: '')
  @override

  /// фамилия
  final String lastName;
  @JsonKey(defaultValue: '')
  @override

  /// отчество
  final String middleName;
  @JsonKey(defaultValue: '')
  @override
  final String phone;
  @JsonKey(defaultValue: '')
  @override
  final String password;

  @override
  String toString() {
    return 'PersonEntity(firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonEntity &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PersonEntityCopyWith<_PersonEntity> get copyWith =>
      __$PersonEntityCopyWithImpl<_PersonEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonEntityToJson(this);
  }
}

abstract class _PersonEntity implements PersonEntity {
  const factory _PersonEntity(
      {String firstName,
      String lastName,
      String middleName,
      String phone,
      String password}) = _$_PersonEntity;

  factory _PersonEntity.fromJson(Map<String, dynamic> json) =
      _$_PersonEntity.fromJson;

  @override

  /// имя
  String get firstName => throw _privateConstructorUsedError;
  @override

  /// фамилия
  String get lastName => throw _privateConstructorUsedError;
  @override

  /// отчество
  String get middleName => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonEntityCopyWith<_PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
