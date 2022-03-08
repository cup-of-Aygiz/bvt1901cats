import 'dart:io';

class AppError {
  AppError(
      this.message, {
        this.exception,
        this.code,
        this.stackTrace,
      });

  final String message;
  final String? code;
  final dynamic exception;
  final dynamic stackTrace;

  //TODO: implement
  // преобразует Exception в AppError для передачи в domain слой
  // используется в onError: внутри обработки then()
  // future().then(
  //           Mapper.mapResponseToEntity,
  //           onError: AppError.throwAppErrorFromException,
  //         );
  static AppError throwAppErrorFromException(exception) {
    if (exception is SocketException) {
      throw AppError(exception.message, exception: exception);
    }
    throw AppError('message');
  }
}
