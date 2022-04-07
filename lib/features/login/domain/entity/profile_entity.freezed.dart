// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) {
  return _ProfileEntity.fromJson(json);
}

/// @nodoc
class _$ProfileEntityTearOff {
  const _$ProfileEntityTearOff();

  _ProfileEntity call(
      {String firstName = '',
      String lastName = '',
      String middleName = '',
      String phone = ''}) {
    return _ProfileEntity(
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      phone: phone,
    );
  }

  ProfileEntity fromJson(Map<String, Object> json) {
    return ProfileEntity.fromJson(json);
  }
}

/// @nodoc
const $ProfileEntity = _$ProfileEntityTearOff();

/// @nodoc
mixin _$ProfileEntity {
  /// имя
  String get firstName => throw _privateConstructorUsedError;

  /// фамилия
  String get lastName => throw _privateConstructorUsedError;

  /// отчество
  String get middleName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res>;
  $Res call(
      {String firstName, String lastName, String middleName, String phone});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  final ProfileEntity _value;
  // ignore: unused_field
  final $Res Function(ProfileEntity) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$ProfileEntityCopyWith(
          _ProfileEntity value, $Res Function(_ProfileEntity) then) =
      __$ProfileEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName, String lastName, String middleName, String phone});
}

/// @nodoc
class __$ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res>
    implements _$ProfileEntityCopyWith<$Res> {
  __$ProfileEntityCopyWithImpl(
      _ProfileEntity _value, $Res Function(_ProfileEntity) _then)
      : super(_value, (v) => _then(v as _ProfileEntity));

  @override
  _ProfileEntity get _value => super._value as _ProfileEntity;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_ProfileEntity(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileEntity implements _ProfileEntity {
  const _$_ProfileEntity(
      {this.firstName = '',
      this.lastName = '',
      this.middleName = '',
      this.phone = ''});

  factory _$_ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileEntityFromJson(json);

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

  @override
  String toString() {
    return 'ProfileEntity(firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileEntity &&
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
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$ProfileEntityCopyWith<_ProfileEntity> get copyWith =>
      __$ProfileEntityCopyWithImpl<_ProfileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileEntityToJson(this);
  }
}

abstract class _ProfileEntity implements ProfileEntity {
  const factory _ProfileEntity(
      {String firstName,
      String lastName,
      String middleName,
      String phone}) = _$_ProfileEntity;

  factory _ProfileEntity.fromJson(Map<String, dynamic> json) =
      _$_ProfileEntity.fromJson;

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
  @JsonKey(ignore: true)
  _$ProfileEntityCopyWith<_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
