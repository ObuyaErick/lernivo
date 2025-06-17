import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_context/auth_context.dart';
import 'package:lernivo/auth/auth_context_notifier.dart';

final authContextProvider =
    AsyncNotifierProvider<AuthContextNotifier, AuthContext>(
      AuthContextNotifier.new,
    );
