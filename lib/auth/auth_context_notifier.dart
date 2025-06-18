import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_context/auth_context.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';

class AuthContextNotifier extends AsyncNotifier<AuthContext?> {
  @override
  Future<AuthContext?> build() async {
    final signInState = ref.watch(signInStateProvider);

    if (signInState == null) {
      return null;
    }

    try {
      final response = await http.get(
        Uri.parse("http://192.168.8.6:3000/session/current-user"),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer ${signInState.accessToken}",
        },
      );
      if (response.statusCode == 200) {
        return AuthContext.fromJson(json.decode(response.body));
      }
    } catch (e) {
      // Fall through
    }

    return null;
  }
}
