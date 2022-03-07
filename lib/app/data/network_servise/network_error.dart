import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError implements Exception {
  const NetworkError._() : super();

  const factory NetworkError.request({required DioError error}) =
  _ResponseError;

  const factory NetworkError.logic({String? error}) = _DecodingError;

  const factory NetworkError.noConnection() = _NoConnection;

  const factory NetworkError.unknown() = _Unknown;

  // String getLocalizedErrorMessage(BuildContext context) {
  //   // final locale = AppLocalizations.of(context)!;
  //   // return when<String>(
  //   //   logic: (error) => error ?? locale.commonError,
  //   //   noConnection: () => locale.noInternet,
  //   //   request: (DioError error) =>
  //   //   _tryParseDioError(error) ?? locale.commonError,
  //   //   unknown: () => locale.commonError,
  //   // );
  // }

  String? _tryParseDioError(DioError error) {
    try {
      final data = error.response!.data as Map<String, dynamic>;
      final errors = data['error'] as List<dynamic>;
      var result = '';
      for (var error in errors) {
        if (error.containsKey('userMessage')) {
          if (result.isNotEmpty) {
            result += '\n';
          }
          result += '${error['userMessage']}';
        }
      }
      return result.isNotEmpty ? result : null;
    } catch (e) {
      return null;
    }
  }
}
