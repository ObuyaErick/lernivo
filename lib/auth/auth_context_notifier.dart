import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthContextNotifier extends AsyncNotifier<String> {
  @override
  Future<String> build() async {
    final response = await http.get(
      Uri.parse("http://192.168.8.6:3000/session/current-user"),
    );
    return response.body;
  }
}
