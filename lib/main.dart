import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/auth/auth_state_provider.dart';
import 'package:lernivo/screens/error_screen.dart';
import 'package:lernivo/screens/main_flow.dart';
import 'package:lernivo/screens/sign_in_screen.dart';
import 'package:lernivo/screens/splash_screen.dart';
import 'package:lernivo/screens/students/student_profile_screen.dart';

void main() {
  runApp(const ProviderScope(child: LernivoApp()));
}

class LernivoApp extends ConsumerWidget {
  const LernivoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateAsync = ref.watch(authStateProvider);

    return MaterialApp(
      title: 'Lernivo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlueAccent,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: authStateAsync.when(
        data: (authState) {
          if (authState.hasData) {
            return AuthorizedAppFlow();
          }
          return SignInScreen();
        },
        error: (error, stack) => const ErrorScreen(),
        loading: () => const SplashScreen(),
      ),
    );
  }
}
