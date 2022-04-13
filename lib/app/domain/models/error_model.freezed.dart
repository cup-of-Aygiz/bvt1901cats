// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
class _$ErrorModelTearOff {
  const _$ErrorModelTearOff();

  _ErrorModel call(String message,
      {dynamic error,
      String? details,
      String? code,
      @JsonKey(ignore: true) StackTrace? stacktrace}) {
    return _ErrorModel(
      message,
      error: error,
      details: details,
      code: code,
      stacktrace: stacktrace,
    );
  }

  ErrorModel fromJson(Map<String, Object> json) {
    return ErrorModel.fromJson(json);
  }
}

/// @nodoc
const $ErrorModel = _$ErrorModelTearOff();

/// @nodoc
mixin _$ErrorModel {
  String get message => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String? get code =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  StackTrace? get stacktrace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res>;
  $Res call(
      {String message,
      dynamic error,
      String? details,
      String? code,
      @JsonKey(ignore: true) StackTrace? stacktrace});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res> implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  final ErrorModel _value;
  // ignore: unused_field
  final $Res Function(ErrorModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? details = freezed,
    Object? code = freezed,
    Object? stacktrace = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stacktrace: stacktrace == freezed
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorModelCopyWith<$Res> implements $ErrorModelCopyWith<$Res> {
  factory _$ErrorModelCopyWith(
          _ErrorModel value, $Res Function(_ErrorModel) then) =
      __$ErrorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message,
      dynamic error,
      String? details,
      String? code,
      @JsonKey(ignore: true) StackTrace? stacktrace});
}

/// @nodoc
class __$ErrorModelCopyWithImpl<$Res> extends _$ErrorModelCopyWithImpl<$Res>
    implements _$ErrorModelCopyWith<$Res> {
  __$ErrorModelCopyWithImpl(
      _ErrorModel _value, $Res Function(_ErrorModel) _then)
      : super(_value, (v) => _then(v as _ErrorModel));

  @override
  _ErrorModel get _value => super._value as _ErrorModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? details = freezed,
    Object? code = freezed,
    Object? stacktrace = freezed,
  }) {
    return _then(_ErrorModel(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stacktrace: stacktrace == freezed
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorModel extends _ErrorModel {
  const _$_ErrorModel(this.message,
      {this.error,
      this.details,
      this.code,
      @JsonKey(ignore: true) this.stacktrace})
      : super._();

  factory _$_ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorModelFromJson(json);

  @override
  final String message;
  @override
  final dynamic error;
  @override
  final String? details;
  @override
  final String? code;
  @override // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  final StackTrace? stacktrace;

  @override
  String toString() {
    return 'ErrorModel(message: $message, error: $error, details: $details, code: $code, stacktrace: $stacktrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorModel &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.stacktrace, stacktrace) ||
                const DeepCollectionEquality()
                    .equals(other.stacktrace, stacktrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(stacktrace);

  @JsonKey(ignore: true)
  @override
  _$ErrorModelCopyWith<_ErrorModel> get copyWith =>
      __$ErrorModelCopyWithImpl<_ErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorModelToJson(this);
  }
}

abstract class _ErrorModel extends ErrorModel {
  const factory _ErrorModel(String message,
      {dynamic error,
      String? details,
      String? code,
      @JsonKey(ignore: true) StackTrace? stacktrace}) = _$_ErrorModel;
  const _ErrorModel._() : super._();

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorModel.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  StackTrace? get stacktrace => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorModelCopyWith<_ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
