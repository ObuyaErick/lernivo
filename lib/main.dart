import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/auth/auth_context_provider.dart';
import 'package:lernivo/screens/error_screen.dart';
import 'package:lernivo/screens/home_screen.dart';
import 'package:lernivo/screens/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: LernivoApp()));
}

class LernivoApp extends ConsumerWidget {
  const LernivoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authContextAsync = ref.watch(authContextProvider);

    return MaterialApp(
      title: 'Lernivo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: authContextAsync.when(
        data: (authContext) {
          return const HomeScreen();
        },
        error: (error, stack) => const ErrorScreen(),
        loading: () => const SplashScreen(),
      ),
    );
  }
}
