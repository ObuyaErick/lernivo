import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_support/password_reset_dto.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';
import 'package:lernivo/screens/request_password_reset_screen.dart';

class PasswordResetScreen extends HookConsumerWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final passwordVisible = useState(false);
    final isSubmitting = useState(false);
    final otp = useState('');
    useListenable(newPasswordController);
    useListenable(confirmPasswordController);

    final tenantDetails = ref.watch(selectedTenantProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (tenantDetails != null)
                Material(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.school)),
                    title: Text(tenantDetails.name),
                    subtitle: Text(tenantDetails.username),
                    onTap: () => {},
                  ),
                ),
              Align(
                alignment: Alignment.centerRight,
                child: FilledButton(
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.change_circle_outlined),
                      SizedBox(width: 8.0),
                      const Text("Change"),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 2.0),
                child: Text(
                  "New Password",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),

              TextFormField(
                obscureText: !passwordVisible.value,
                controller: newPasswordController,
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
                controller: confirmPasswordController,
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
                focusedBorderColor: Theme.of(context).colorScheme.primary,
                showFieldAsBox: true,
              ),

              SizedBox(height: 20.0),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed:
                      isSubmitting.value ||
                              newPasswordController.text.isEmpty ||
                              confirmPasswordController.text.isEmpty
                          ? null
                          : () {
                            isSubmitting.value = true;
                            ref
                                .read(signInStateProvider.notifier)
                                .resetPassword(
                                  PasswordResetDto(
                                    tenant: "victoria",
                                    newPassword: newPasswordController.text,
                                    confirmNewPassword:
                                        confirmPasswordController.text,
                                    otp: otp.value,
                                  ),
                                )
                                .then((response) {
                                  if (context.mounted) {
                                    String? message;
                                    bool error;
                                    if (response.hasData) {
                                      message = response.body!.message;
                                      error = false;
                                    } else if (response.hasErrors) {
                                      message = response.errors?.message.join(
                                        ", ",
                                      );
                                      error = true;
                                    } else {
                                      message = "An unexpected error occured";
                                      error = true;
                                    }

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor:
                                            error
                                                ? Theme.of(
                                                  context,
                                                ).colorScheme.error
                                                : Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                        content: Text("$message"),
                                        duration: Duration(seconds: 10),
                                      ),
                                    );

                                    if (!error) {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder:
                                      //         (context) =>
                                      //             PasswordResetScreen(),
                                      //   ),
                                      // );
                                    }
                                  }
                                });
                            isSubmitting.value = false;
                          },
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  child:
                      isSubmitting.value
                          ? CircularProgressIndicator(
                            constraints: BoxConstraints.tightFor(
                              width: 24.0,
                              height: 24.0,
                            ),
                            valueColor: AlwaysStoppedAnimation(
                              Theme.of(context).colorScheme.onPrimary,
                            ),
                          )
                          : const Text(
                            "Confirm",
                            style: TextStyle(fontSize: 16),
                          ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: FilledButton.tonal(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text(
                    'Back to Login',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
