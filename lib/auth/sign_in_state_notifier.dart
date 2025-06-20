import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/api.dart';
import 'package:lernivo/auth/auth_support/password_reset_dto.dart';
import 'package:lernivo/auth/auth_support/password_reset_request_dto.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_dto.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_state.dart';

class SignInStateNotifier extends Notifier<SignInState?> {
  SignInStateNotifier();
  @override
  build() => null;

  Future<void> login(SignInDto signInDto) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/signin"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(signInDto.toJson()),
    );

    if (response.statusCode == 200) {
      final signInResponse = SignInState.fromJson(json.decode(response.body));

      state = signInResponse;
    } else {
      throw Exception(response.body);
    }
  }

  Future<void> requestPasswordReset(
    PasswordResetRequestDto passwordResetRequesDto,
  ) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/support/request-password-reset"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(passwordResetRequesDto.toJson()),
    );

    if (response.statusCode == 200) {
      // final signInResponse = PasswordResetRequestDto.fromJson(
      //   json.decode(response.body),
      // );
    } else {
      throw Exception(response.body);
    }
  }

  Future<void> resetPassword(PasswordResetDto resetPasswordDto) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/support/reset-password"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(resetPasswordDto.toJson()),
    );

    if (response.statusCode == 200) {
      // final signInResponse = SignInState.fromJson(json.decode(response.body));
    } else {
      throw Exception(response.body);
    }
  }

  Future<void> logout() async {
    state = null;
  }
}
