import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_context_provider.dart';
import 'package:lernivo/auth/sign_in_dto/sign_in_dto.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';

enum SignInBy { password, pin, fingerprint }

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final signInBy = useState(SignInBy.password);
    final signInState = ref.watch(signInStateProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 250.0,
            title: Text(
              'Lernivo',
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.primary.withAlpha(255),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
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

    final signInState = ref.watch(signInStateProvider);

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
              "Welcome Back! ${signInState?.accessToken.substring(0, 4)}",
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
              isDense: true,
              hintText: 'e.g. yourschoolname',
              prefixIcon: Icon(Icons.school_outlined),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white60),
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
              isDense: true,
              hintText: 'enter your username',
              prefixIcon: Icon(Icons.person_outline),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white60),
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
                borderSide: BorderSide(color: Colors.white60),
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
