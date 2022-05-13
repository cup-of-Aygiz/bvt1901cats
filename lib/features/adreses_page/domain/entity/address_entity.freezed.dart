// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressEntity _$AddressEntityFromJson(Map<String, dynamic> json) {
  return _AddressEntity.fromJson(json);
}

/// @nodoc
class _$AddressEntityTearOff {
  const _$AddressEntityTearOff();

  _AddressEntity call(
      {String address = '',
      int entrance = 0,
      int flat = 0,
      int floor = 0,
      int intercom = 0,
      String comment = ''}) {
    return _AddressEntity(
      address: address,
      entrance: entrance,
      flat: flat,
      floor: floor,
      intercom: intercom,
      comment: comment,
    );
  }

  AddressEntity fromJson(Map<String, Object> json) {
    return AddressEntity.fromJson(json);
  }
}

/// @nodoc
const $AddressEntity = _$AddressEntityTearOff();

/// @nodoc
mixin _$AddressEntity {
  String get address => throw _privateConstructorUsedError;
  int get entrance => throw _privateConstructorUsedError;
  int get flat => throw _privateConstructorUsedError;
  int get floor => throw _privateConstructorUsedError;
  int get intercom => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressEntityCopyWith<AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEntityCopyWith<$Res> {
  factory $AddressEntityCopyWith(
          AddressEntity value, $Res Function(AddressEntity) then) =
      _$AddressEntityCopyWithImpl<$Res>;
  $Res call(
      {String address,
      int entrance,
      int flat,
      int floor,
      int intercom,
      String comment});
}

/// @nodoc
class _$AddressEntityCopyWithImpl<$Res>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._value, this._then);

  final AddressEntity _value;
  // ignore: unused_field
  final $Res Function(AddressEntity) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? entrance = freezed,
    Object? flat = freezed,
    Object? floor = freezed,
    Object? intercom = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as int,
      flat: flat == freezed
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as int,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      intercom: intercom == freezed
          ? _value.intercom
          : intercom // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddressEntityCopyWith<$Res>
    implements $AddressEntityCopyWith<$Res> {
  factory _$AddressEntityCopyWith(
          _AddressEntity value, $Res Function(_AddressEntity) then) =
      __$AddressEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      int entrance,
      int flat,
      int floor,
      int intercom,
      String comment});
}

/// @nodoc
class __$AddressEntityCopyWithImpl<$Res>
    extends _$AddressEntityCopyWithImpl<$Res>
    implements _$AddressEntityCopyWith<$Res> {
  __$AddressEntityCopyWithImpl(
      _AddressEntity _value, $Res Function(_AddressEntity) _then)
      : super(_value, (v) => _then(v as _AddressEntity));

  @override
  _AddressEntity get _value => super._value as _AddressEntity;

  @override
  $Res call({
    Object? address = freezed,
    Object? entrance = freezed,
    Object? flat = freezed,
    Object? floor = freezed,
    Object? intercom = freezed,
    Object? comment = freezed,
  }) {
    return _then(_AddressEntity(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as int,
      flat: flat == freezed
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as int,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      intercom: intercom == freezed
          ? _value.intercom
          : intercom // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressEntity implements _AddressEntity {
  const _$_AddressEntity(
      {this.address = '',
      this.entrance = 0,
      this.flat = 0,
      this.floor = 0,
      this.intercom = 0,
      this.comment = ''});

  factory _$_AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AddressEntityFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String address;
  @JsonKey(defaultValue: 0)
  @override
  final int entrance;
  @JsonKey(defaultValue: 0)
  @override
  final int flat;
  @JsonKey(defaultValue: 0)
  @override
  final int floor;
  @JsonKey(defaultValue: 0)
  @override
  final int intercom;
  @JsonKey(defaultValue: '')
  @override
  final String comment;

  @override
  String toString() {
    return 'AddressEntity(address: $address, entrance: $entrance, flat: $flat, floor: $floor, intercom: $intercom, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressEntity &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.entrance, entrance) ||
                const DeepCollectionEquality()
                    .equals(other.entrance, entrance)) &&
            (identical(other.flat, flat) ||
                const DeepCollectionEquality().equals(other.flat, flat)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.intercom, intercom) ||
                const DeepCollectionEquality()
                    .equals(other.intercom, intercom)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(entrance) ^
      const DeepCollectionEquality().hash(flat) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(intercom) ^
      const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$AddressEntityCopyWith<_AddressEntity> get copyWith =>
      __$AddressEntityCopyWithImpl<_AddressEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressEntityToJson(this);
  }
}

abstract class _AddressEntity implements AddressEntity {
  const factory _AddressEntity(
      {String address,
      int entrance,
      int flat,
      int floor,
      int intercom,
      String comment}) = _$_AddressEntity;

  factory _AddressEntity.fromJson(Map<String, dynamic> json) =
      _$_AddressEntity.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  int get entrance => throw _privateConstructorUsedError;
  @override
  int get flat => throw _privateConstructorUsedError;
  @override
  int get floor => throw _privateConstructorUsedError;
  @override
  int get intercom => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressEntityCopyWith<_AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
