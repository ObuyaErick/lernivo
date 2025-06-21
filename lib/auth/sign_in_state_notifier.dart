import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/api/api_response/api_error/api_error.dart';
import 'package:lernivo/api/api_response/api_response.dart';
import 'package:lernivo/api/api_response/api_success/api_success.dart';
import 'package:lernivo/api/base_url.dart';
import 'package:lernivo/auth/auth_support/password_reset_dto.dart';
import 'package:lernivo/auth/auth_support/password_reset_request_dto.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_dto.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_state.dart';

class SignInStateNotifier extends Notifier<SignInState?> {
  SignInStateNotifier();
  @override
  build() => null;

  Future<ApiResponse<ApiSuccess<SignInState>>> login(
    SignInDto signInDto,
  ) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/auth/signin"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(signInDto.toJson()),
      );

      if (response.statusCode < 400) {
        final signInResponse = ApiSuccess.fromJson(
          json.decode(response.body),
          (json) => SignInState.fromJson(json as Map<String, dynamic>),
        );

        state = signInResponse.data;
        return ApiResponse.success(signInResponse);
      } else {
        final apiError = ApiError.fromJson(json.decode(response.body));

        return ApiResponse.error(apiError);
      }
    } catch (e) {
      return ApiResponse.error(
        ApiError(message: [e.toString()], statusCode: -1, error: e.toString()),
      );
    }
  }

  Future<ApiResponse<Messenger>> requestPasswordReset(
    PasswordResetRequestDto passwordResetRequesDto,
  ) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/auth/support/request-password-reset"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(passwordResetRequesDto.toJson()),
      );

      if (response.statusCode < 400) {
        final messenger = Messenger.fromJson(json.decode(response.body));

        return ApiResponse.success(messenger);
      } else {
        final apiError = ApiError.fromJson(json.decode(response.body));
        return ApiResponse.error(apiError);
      }
    } catch (e) {
      return ApiResponse.error(
        ApiError(message: [e.toString()], statusCode: -1, error: e.toString()),
      );
    }
  }

  Future<ApiResponse<Messenger>> resetPassword(
    PasswordResetDto resetPasswordDto,
  ) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/auth/support/reset-password"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(resetPasswordDto.toJson()),
      );

      if (response.statusCode < 400) {
        final messenger = Messenger.fromJson(json.decode(response.body));

        return ApiResponse.success(messenger);
      } else {
        final apiError = ApiError.fromJson(json.decode(response.body));
        return ApiResponse.error(apiError);
      }
    } catch (e) {
      return ApiResponse.error(
        ApiError(message: [e.toString()], statusCode: -1, error: e.toString()),
      );
    }
  }

  Future<void> logout() async {
    state = null;
  }
}
