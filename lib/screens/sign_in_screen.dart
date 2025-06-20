import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_dto.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';
import 'package:lernivo/screens/request_password_reset_screen.dart';

enum SignInBy { password, pin, fingerprint }

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 24.0,
              ),
              child: SignInForm(),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 250.0,
      backgroundColor: Theme.of(context).colorScheme.primary,
      elevation: 4,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        centerTitle: true,
        title: Text(
          'Lernivo',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontSize: 24.0,
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primaryContainer,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Icon(
                  Icons.school_rounded,
                  size: 64,
                  color: Theme.of(
                    context,
                  ).colorScheme.onPrimary.withValues(alpha: 0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInForm extends HookConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController tenantController = useTextEditingController(
      text: "victoria",
    );
    final TextEditingController usernameController = useTextEditingController(
      text: "victoria",
    );
    final TextEditingController passwordController = useTextEditingController(
      text: "Password1234@",
    );
    final passwordVisible = useState(false);
    final signingIn = useState(false);

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 32.0, bottom: 2.0, top: 4.0),
            child: Text(
              "Welcome Back!",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
              // textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 32.0, bottom: 2.0, top: 4.0),
            child: Text(
              "School",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),

          // Tenant Input Field
          TextFormField(
            controller: tenantController,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              hintText: 'e.g. yourschoolname',
              prefixIcon: Icon(Icons.school_outlined),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please identify your school';
              }
              return null;
            },
          ),

          Padding(
            padding: EdgeInsets.only(left: 32.0, bottom: 2.0, top: 4.0),
            child: Text(
              "Username",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),

          // Username Input Field
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              filled: true,
              isDense: true,
              hintText: 'enter your username',
              prefixIcon: Icon(Icons.person_outline),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'username is required';
              }
              return null;
            },
          ),

          Padding(
            padding: EdgeInsets.only(left: 32.0, bottom: 2.0, top: 4.0),
            child: Text(
              "Password",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),

          // Password Input Field
          TextFormField(
            controller: passwordController,
            obscureText: !passwordVisible.value,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              hintText: 'enter your password',
              prefixIcon: Icon(Icons.lock_open_outlined),
              suffixIcon: GestureDetector(
                onTap: () {
                  passwordVisible.value = !passwordVisible.value;
                },
                child:
                    passwordVisible.value
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'password is required';
              }
              return null;
            },
          ),

          const SizedBox(height: 24.0),

          // Sign In Button
          FilledButton(
            onPressed:
                signingIn.value
                    ? null
                    : () async {
                      if (formKey.currentState!.validate()) {
                        signingIn.value = true;
                        await Future.delayed(Duration(seconds: 2));

                        await ref
                            .read(signInStateProvider.notifier)
                            .login(
                              SignInDto(
                                tenant: tenantController.text,
                                username: usernameController.text,
                                password: passwordController.text,
                              ),
                            )
                            .then((_) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor:
                                        Theme.of(context).colorScheme.primary,
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    content: Text("Login Successful"),
                                    duration: Duration(seconds: 10),
                                  ),
                                );
                              }
                            })
                            .catchError((error, stack) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor:
                                        Theme.of(context).colorScheme.error,
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    content: Text(
                                      "Login Failed. Error: $error",
                                    ),
                                    duration: Duration(seconds: 10),
                                  ),
                                );
                              }
                            });
                        signingIn.value = false;
                      }
                    },
            style: FilledButton.styleFrom(
              elevation: 2.0,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
            child:
                signingIn.value
                    ? CircularProgressIndicator(
                      constraints: BoxConstraints.tightFor(
                        width: 24.0,
                        height: 24.0,
                      ),
                      valueColor: AlwaysStoppedAnimation(
                        Theme.of(context).colorScheme.onPrimary,
                      ),
                    )
                    : const Text('Sign In', style: TextStyle(fontSize: 18.0)),
          ),

          const SizedBox(height: 16.0),

          // Optional: Forgot Password and Sign Up links
          FilledButton.tonal(
            onPressed: () {
              // Handle forgot password navigation
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RequestPasswordResetScreen(),
                ),
              );
            },
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
            ),
            child: const Text('Forgot Password?'),
          ),
          // TextButton(
          //   onPressed: () {
          //     // Handle navigation to sign up screen
          //     print('Don\'t have an account? Sign Up');
          //   },
          //   child: const Text('Don\'t have an account? Sign Up'),
          // ),
        ],
      ),
    );
  }
}
