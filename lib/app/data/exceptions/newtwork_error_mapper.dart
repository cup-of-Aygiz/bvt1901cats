import 'package:dio/dio.dart';

import '../../../dev/logger/app_loger.dart';
import '../../../utils/extentions/collection_utils.dart';
import '../../domain/models/error_model.dart';
import 'app_exception.dart';

ErrorModel mapToErrorModel(dynamic error,
    {String defaultMessage = 'Unknown error'}) {
  logException(error);
  if (error is ErrorModel) {
    return error;
  }

  try {
    if (error is AppException) {
      return _getAppExceptionErrorModel(error);
    }
    if (error is DioError) {
      return _getDioErrorModel(error);
    }
  } on Exception catch (e) {
    logException(e);
  }
  return ErrorModel(
    defaultMessage,
    error: error,
    code: '',
  );
}


ErrorModel _getAppExceptionErrorModel(AppException error) {
  final message = error.message ?? '';
  final code = error.code ?? '';

  return ErrorModel(message,
      code: _getMessageCode(code),
      stacktrace: error.stacktrace,
      error: error.error,
      details: error.details);
}

ErrorModel _getDioErrorModel(DioError error) {
  try {
    if (error.response?.statusCode == 422) {
      return ErrorModel(
        '',
        code: _getMessageCode(error.response?.statusCode),
        error: error,
        details: error.response?.statusMessage,
      );
    }

    if (error.response?.data['message'] != null) {
      final message = error.response?.data['message'] ?? '';
      return ErrorModel(
        message,
        error: error,
        code: _getMessageCode(error.response?.statusCode),
        details: error.response?.statusMessage,
      );
    }

    if (error.response?.data is Map &&
        error.response?.data['error'] != null &&
        error.response?.data['error'] is Iterable) {
      final message = IterableUtils.getFirstOrNull(
              (error.response?.data['error'] as Iterable)) ??
          '';
      return ErrorModel(
        message,
        code: _getMessageCode(error.response?.statusCode),
        error: error,
        details: error.response?.statusMessage,
      );
    }

    if (error.response?.data is Map &&
        error.response?.data['error'] != null &&
        error.response?.data['error'] is Map) {
      final message =
          (error.response?.data['error'] as Map).entries.first.toString();
      return ErrorModel(
        message,
        error: error,
        code: _getMessageCode(error.response?.statusCode),
        details: error.response?.statusMessage,
      );
    }

    if (error.response?.data is Map && error.response?.data['error'] != null) {
      final message = error.response?.data['error'] ?? '';
      return ErrorModel(
        message,
        error: error,
        code: _getMessageCode(error.response?.statusCode),
        details: error.response?.statusMessage,
      );
    }

    if (error.response == null) {
      return ErrorModel(
        '',
        error: error,
        code: _getMessageCode(error.response?.statusCode),
        details: error.response?.statusMessage,
      );
    }
    return ErrorModel(
      '',
      code: _getMessageCode(error.response?.statusCode),
      error: error,
    );
  } catch (error) {
    logException(error);
    return ErrorModel(
      '',
      error: error,
      code: '',
    );
  }
}

String _getMessageCode(dynamic code) {
  final codeString = int.tryParse(code.toString());
  return codeString.toString();
}
