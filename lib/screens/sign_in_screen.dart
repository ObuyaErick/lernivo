import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/widgets/input/app_text_field_material.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController tenantController = useTextEditingController();
    final TextEditingController usernameController = useTextEditingController();
    final TextEditingController passwordController = useTextEditingController();
    final passwordVisible = useState(false);

    // Global FormState Key for validation.
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      // appBar: AppBar(title: const Text('Sign In'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          // Allows the content to scroll if the keyboard appears
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/images/app_logo.png', height: 120),
                const SizedBox(height: 32.0),
                Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32.0),

                // Tenant Input Field
                AppTextFieldMaterial(
                  child: TextFormField(
                    controller: tenantController,
                    decoration: const InputDecoration(
                      labelText: 'School',
                      hintText: 'e.g., yourschoolname',
                      prefixIcon: Icon(Icons.school),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please identify your school';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16.0),

                // Username Input Field
                AppTextFieldMaterial(
                  child: TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'enter your username',
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'username is required';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16.0),

                // Password Input Field
                AppTextFieldMaterial(
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true, // Hides the input characters
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'enter your password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          passwordVisible.value = !passwordVisible.value;
                        },
                        child:
                            passwordVisible.value
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                      ),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password is required';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 24.0),

                // Sign In Button
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  style: FilledButton.styleFrom(
                    elevation: 2.0,
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),

                const SizedBox(height: 16.0),

                // Optional: Forgot Password and Sign Up links
                FilledButton.tonal(
                  onPressed: () {
                    // Handle forgot password navigation
                    print('Forgot Password?');
                  },
                  child: const Text('Forgot Password?'),
                ),
                TextButton(
                  onPressed: () {
                    // Handle navigation to sign up screen
                    print('Don\'t have an account? Sign Up');
                  },
                  child: const Text('Don\'t have an account? Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
