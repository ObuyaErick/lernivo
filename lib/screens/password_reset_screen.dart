import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasswordResetScreen extends HookConsumerWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordVisible = useState(false);

    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 2.0),
                child: Text(
                  "New Password",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),

              TextFormField(
                obscureText: !passwordVisible.value,
                decoration: InputDecoration(
                  filled: true,
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
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 2.0, top: 20.0),
                child: Text(
                  "Confirm New Password",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),

              TextFormField(
                obscureText: !passwordVisible.value,
                decoration: InputDecoration(
                  filled: true,
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
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 2.0, top: 20.0),
                child: Text(
                  "One-Time-Password",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),

              OtpTextField(
                numberOfFields: 6,
                borderColor: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.7),
                showFieldAsBox: true,
              ),

              SizedBox(height: 20.0),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  child: const Text('Confirm', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
