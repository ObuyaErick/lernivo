import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_state_notifier.dart';

final authStateProvider =
    AsyncNotifierProvider<AuthStateNotifier, AuthStateHolder>(
      AuthStateNotifier.new,
    );
