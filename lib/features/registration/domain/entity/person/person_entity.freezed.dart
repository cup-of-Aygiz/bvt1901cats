// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) {
  return _PersonEntity.fromJson(json);
}

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
abstract class _$$_PersonEntityCopyWith<$Res>
    implements $PersonEntityCopyWith<$Res> {
  factory _$$_PersonEntityCopyWith(
          _$_PersonEntity value, $Res Function(_$_PersonEntity) then) =
      __$$_PersonEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String middleName,
      String phone,
      String password});
}

/// @nodoc
class __$$_PersonEntityCopyWithImpl<$Res>
    extends _$PersonEntityCopyWithImpl<$Res>
    implements _$$_PersonEntityCopyWith<$Res> {
  __$$_PersonEntityCopyWithImpl(
      _$_PersonEntity _value, $Res Function(_$_PersonEntity) _then)
      : super(_value, (v) => _then(v as _$_PersonEntity));

  @override
  _$_PersonEntity get _value => super._value as _$_PersonEntity;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_PersonEntity(
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

  /// имя
  @override
  @JsonKey()
  final String firstName;

  /// фамилия
  @override
  @JsonKey()
  final String lastName;

  /// отчество
  @override
  @JsonKey()
  final String middleName;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'PersonEntity(firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonEntity &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(middleName),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_PersonEntityCopyWith<_$_PersonEntity> get copyWith =>
      __$$_PersonEntityCopyWithImpl<_$_PersonEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonEntityToJson(this);
  }
}

abstract class _PersonEntity implements PersonEntity {
  const factory _PersonEntity(
      {final String firstName,
      final String lastName,
      final String middleName,
      final String phone,
      final String password}) = _$_PersonEntity;

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
  _$$_PersonEntityCopyWith<_$_PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
