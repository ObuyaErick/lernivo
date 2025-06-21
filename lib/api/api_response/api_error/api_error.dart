import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
sealed class ApiError with _$ApiError {
  const factory ApiError({
    required List<String> message,
    required int statusCode,
    required String error,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) {
    final message = json['message'];
    List<String> normalizedMessages =
        message is String
            ? [message]
            : message is List
            ? List<String>.from(message)
            : [];
    final statusCode = json['statusCode'] as int;
    final error = json['error'] as String;
    return ApiError(
      message: normalizedMessages,
      statusCode: statusCode,
      error: error,
    );
  }
}
