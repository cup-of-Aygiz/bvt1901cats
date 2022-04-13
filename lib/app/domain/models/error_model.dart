import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const ErrorModel._();

  const factory ErrorModel(
      String message,{
        dynamic error,
        String? details,
        String? code,
        // ignore: invalid_annotation_target
        @JsonKey(ignore: true) StackTrace? stacktrace,
      }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
