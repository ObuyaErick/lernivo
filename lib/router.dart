import 'package:go_router/go_router.dart';
import 'package:lernivo/screens/home_screen.dart';
import 'package:lernivo/screens/sign_in_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/signin', builder: (_, _) => const SignInScreen()),
    GoRoute(path: '/home', builder: (_, _) => const HomeScreen()),
  ],
);
