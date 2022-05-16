// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) logic,
    required TResult Function() noConnection,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) logic,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res> implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  final NetworkError _value;
  // ignore: unused_field
  final $Res Function(NetworkError) _then;
}

/// @nodoc
abstract class _$$_ResponseErrorCopyWith<$Res> {
  factory _$$_ResponseErrorCopyWith(
          _$_ResponseError value, $Res Function(_$_ResponseError) then) =
      __$$_ResponseErrorCopyWithImpl<$Res>;
  $Res call({DioError error});
}

/// @nodoc
class __$$_ResponseErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_ResponseErrorCopyWith<$Res> {
  __$$_ResponseErrorCopyWithImpl(
      _$_ResponseError _value, $Res Function(_$_ResponseError) _then)
      : super(_value, (v) => _then(v as _$_ResponseError));

  @override
  _$_ResponseError get _value => super._value as _$_ResponseError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ResponseError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$_ResponseError extends _ResponseError {
  const _$_ResponseError({required this.error}) : super._();

  @override
  final DioError error;

  @override
  String toString() {
    return 'NetworkError.request(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      __$$_ResponseErrorCopyWithImpl<_$_ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) logic,
    required TResult Function() noConnection,
    required TResult Function() unknown,
  }) {
    return request(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
  }) {
    return request?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) logic,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _ResponseError extends NetworkError {
  const factory _ResponseError({required final DioError error}) =
      _$_ResponseError;
  const _ResponseError._() : super._();

  DioError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecodingErrorCopyWith<$Res> {
  factory _$$_DecodingErrorCopyWith(
          _$_DecodingError value, $Res Function(_$_DecodingError) then) =
      __$$_DecodingErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$$_DecodingErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_DecodingErrorCopyWith<$Res> {
  __$$_DecodingErrorCopyWithImpl(
      _$_DecodingError _value, $Res Function(_$_DecodingError) _then)
      : super(_value, (v) => _then(v as _$_DecodingError));

  @override
  _$_DecodingError get _value => super._value as _$_DecodingError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_DecodingError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DecodingError extends _DecodingError {
  const _$_DecodingError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'NetworkError.logic(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecodingError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_DecodingErrorCopyWith<_$_DecodingError> get copyWith =>
      __$$_DecodingErrorCopyWithImpl<_$_DecodingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) logic,
    required TResult Function() noConnection,
    required TResult Function() unknown,
  }) {
    return logic(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
  }) {
    return logic?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (logic != null) {
      return logic(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) logic,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return logic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return logic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (logic != null) {
      return logic(this);
    }
    return orElse();
  }
}

abstract class _DecodingError extends NetworkError {
  const factory _DecodingError({final String? error}) = _$_DecodingError;
  const _DecodingError._() : super._();

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DecodingErrorCopyWith<_$_DecodingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, (v) => _then(v as _$_NoConnection));

  @override
  _$_NoConnection get _value => super._value as _$_NoConnection;
}

/// @nodoc

class _$_NoConnection extends _NoConnection {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'NetworkError.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) logic,
    required TResult Function() noConnection,
    required TResult Function() unknown,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) logic,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends NetworkError {
  const factory _NoConnection() = _$_NoConnection;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, (v) => _then(v as _$_Unknown));

  @override
  _$_Unknown get _value => super._value as _$_Unknown;
}

/// @nodoc

class _$_Unknown extends _Unknown {
  const _$_Unknown() : super._();

  @override
  String toString() {
    return 'NetworkError.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) request,
    required TResult Function(String? error) logic,
    required TResult Function() noConnection,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? request,
    TResult Function(String? error)? logic,
    TResult Function()? noConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) request,
    required TResult Function(_DecodingError value) logic,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? request,
    TResult Function(_DecodingError value)? logic,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends NetworkError {
  const factory _Unknown() = _$_Unknown;
  const _Unknown._() : super._();
}
