import 'package:lernivo/api/api_response/api_error/api_error.dart';

class Messenger {
  final String message;

  Messenger({required this.message});

  factory Messenger.fromJson(Map<String, dynamic> json) {
    return Messenger(message: json['message']);
  }
}

class ApiResponse<D> {
  final D? body;
  final ApiError? errors;

  bool get hasData => body != null;

  bool get hasErrors => errors != null;

  ApiResponse({required this.body, required this.errors});

  factory ApiResponse.error(ApiError errors) {
    return ApiResponse(body: null, errors: errors);
  }
  factory ApiResponse.success(D body) {
    return ApiResponse(body: body, errors: null);
  }
}
