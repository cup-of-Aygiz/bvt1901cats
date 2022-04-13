class AppException implements Exception {
  final dynamic code;
  final dynamic error;
  final dynamic details;
  final String? message;
  final dynamic stacktrace;

  AppException({
    this.error,
    this.details,
    this.message,
    this.code,
    this.stacktrace,
  });

  @override
  String toString() => 'AppException($code, $message, $details, $stacktrace)';
}
