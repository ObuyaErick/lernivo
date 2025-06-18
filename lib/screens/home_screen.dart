import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_context_provider.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authContextAsync = ref.watch(authContextProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: switch (authContextAsync) {
          AsyncData(:final value) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$value"),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  ref.read(signInStateProvider.notifier).logout();
                },
                child: Text("Sign Out"),
              ),
            ],
          ),
          AsyncError() => Text("Error"),
          _ => CircularProgressIndicator(
            constraints: BoxConstraints.tightFor(width: 24.0, height: 24.0),
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        },
      ),
    );
  }
}
