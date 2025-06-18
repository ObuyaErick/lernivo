import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_state.dart';
import 'package:lernivo/auth/sign_in_state_notifier.dart';

final signInStateProvider = NotifierProvider<SignInStateNotifier, SignInState?>(
SignInStateNotifier.new,
);
