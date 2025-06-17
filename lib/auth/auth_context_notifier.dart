import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_context/auth_context.dart';

class AuthContextNotifier extends AsyncNotifier<AuthContext> {
  @override
  Future<AuthContext> build() async {
    final response = await http.get(
      Uri.parse("http://192.168.8.6:3000/session/current-user"),
    );
    if (response.statusCode == 200) {
      return AuthContext.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
