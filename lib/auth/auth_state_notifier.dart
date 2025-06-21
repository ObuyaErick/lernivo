import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/api/api_response/api_error/api_error.dart';
import 'package:lernivo/api/api_response/api_success/api_success.dart';
import 'package:lernivo/api/base_url.dart';
import 'package:lernivo/auth/auth_context/auth_context.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';

class AuthStateHolder {
  final AuthContext? authContext;
  final ApiError? errors;

  bool get hasData => authContext != null;

  bool get hasErrors => errors != null;

  AuthStateHolder({required this.authContext, required this.errors});
}

class AuthStateNotifier extends AsyncNotifier<AuthStateHolder> {
  @override
  Future<AuthStateHolder> build() async {
    final signInState = ref.watch(signInStateProvider);

    if (signInState == null) {
      return AuthStateHolder(
        authContext: null,
        errors: ApiError(
          message: [
            "You are not logged in. Please log in with your credentials to continue.",
          ],
          statusCode: 401,
          error: "Unauthenticated",
        ),
      );
    }

    try {
      final response = await http.get(
        Uri.parse("$baseUrl/session/current"),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer ${signInState.accessToken}",
        },
      );
      if (response.statusCode < 400) {
        final context = ApiSuccess<AuthContext>.fromJson(
          json.decode(response.body),
          (json) => AuthContext.fromJson(json as Map<String, dynamic>),
        );
        return AuthStateHolder(authContext: context.data, errors: null);
      } else {
        final error = ApiError.fromJson(json.decode(response.body));
        return AuthStateHolder(authContext: null, errors: error);
      }
    } catch (e) {
      // Fall through
      return AuthStateHolder(
        authContext: null,
        errors: ApiError(
          message: [e.toString()],
          statusCode: -1,
          error: e.toString(),
        ),
      );
    }
  }
}
