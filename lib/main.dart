import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/screens/sign_in_screen.dart';

void main() {
  runApp(const ProviderScope(child: LernivoApp()));
}

class LernivoApp extends StatelessWidget {
  const LernivoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lernivo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: SignInScreen(),
    );
  }
}
