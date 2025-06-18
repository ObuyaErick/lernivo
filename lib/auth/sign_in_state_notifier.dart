import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_dto.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_state.dart';

class SignInStateNotifier extends Notifier<SignInState?> {
  SignInStateNotifier();
  @override
  build() => null;

  Future<void> login(SignInDto signInDto) async {
    final response = await http.post(
      Uri.parse("http://192.168.8.6:3000/auth/signin"),
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

  Future<void> logout() async {
    state = null;
  }
}
