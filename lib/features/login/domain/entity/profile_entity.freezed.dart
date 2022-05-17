// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) {
  return _ProfileEntity.fromJson(json);
}

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
abstract class _$$_ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$_ProfileEntityCopyWith(
          _$_ProfileEntity value, $Res Function(_$_ProfileEntity) then) =
      __$$_ProfileEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName, String lastName, String middleName, String phone});
}

/// @nodoc
class __$$_ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res>
    implements _$$_ProfileEntityCopyWith<$Res> {
  __$$_ProfileEntityCopyWithImpl(
      _$_ProfileEntity _value, $Res Function(_$_ProfileEntity) _then)
      : super(_value, (v) => _then(v as _$_ProfileEntity));

  @override
  _$_ProfileEntity get _value => super._value as _$_ProfileEntity;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_ProfileEntity(
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
class _$_ProfileEntity extends _ProfileEntity {
  const _$_ProfileEntity(
      {this.firstName = '',
      this.lastName = '',
      this.middleName = '',
      this.phone = ''})
      : super._();

  factory _$_ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileEntityFromJson(json);

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
  String toString() {
    return 'ProfileEntity(firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEntity &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(middleName),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      __$$_ProfileEntityCopyWithImpl<_$_ProfileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileEntityToJson(this);
  }
}

abstract class _ProfileEntity extends ProfileEntity {
  const factory _ProfileEntity(
      {final String firstName,
      final String lastName,
      final String middleName,
      final String phone}) = _$_ProfileEntity;
  const _ProfileEntity._() : super._();

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
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
