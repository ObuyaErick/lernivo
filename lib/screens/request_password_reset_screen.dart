import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/auth_support/password_reset_request_dto.dart';
import 'package:lernivo/auth/sign_in_state_provider.dart';
import 'package:lernivo/auth/tenant/tenant_details.dart';
import 'package:lernivo/auth/tenant_list_provider.dart';
import 'package:lernivo/screens/password_reset_screen.dart';
import 'package:shimmer/shimmer.dart';

class RequestPasswordResetScreen extends HookConsumerWidget {
  const RequestPasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tenantController = useTextEditingController();
    final emailOrUsernameController = useTextEditingController();
    final tenantFieldFocusNode = useFocusNode();
    final isRequesting = useState(false);
    useListenable(tenantController);
    useListenable(emailOrUsernameController);

    useEffect(() {
      void onFocusChange() async {
        if (tenantFieldFocusNode.hasFocus) {
          // Preven keyboard
          tenantFieldFocusNode.unfocus();

          final tenantDetails = await _showTenantSelector(context, ref);
          if (tenantDetails != null) {
            tenantController.text = tenantDetails.username;
            ref.read(_selectedTenantProvider.notifier).state = tenantDetails;
          }
        }
      }

      tenantFieldFocusNode.addListener(onFocusChange);
      return () => tenantFieldFocusNode.removeListener(onFocusChange);
    }, [tenantFieldFocusNode]);

    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 2.0, top: 24.0),
                child: Text(
                  "School",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),

              // Tenant input field
              TextField(
                focusNode: tenantFieldFocusNode,
                controller: tenantController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "e.g. obhs",
                  helperText: "Your school's username",
                  helperMaxLines: 5,
                  prefixIcon: Icon(Icons.school_outlined),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 2.0, top: 24.0),
                child: Text(
                  "Username or Email Address",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),

              // Email/Username input field
              TextField(
                controller: emailOrUsernameController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "e.g. johndoe@gmail.com",
                  helperText:
                      "Enter your email address or username above. We'll send you a one-time password (OTP) to your registered email address that you can use to create a new password.",
                  helperMaxLines: 5,
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed:
                      tenantController.text.isEmpty ||
                              emailOrUsernameController.text.isEmpty ||
                              isRequesting.value
                          ? null
                          : () async {
                            isRequesting.value = true;
                            await ref
                                .read(signInStateProvider.notifier)
                                .requestPasswordReset(
                                  PasswordResetRequestDto(
                                    tenant: tenantController.text,
                                    username: emailOrUsernameController.text,
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
                                      message = response.errors?.message[0];
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) =>
                                                  PasswordResetScreen(),
                                        ),
                                      );
                                    }
                                  }
                                });
                            isRequesting.value = false;
                          },
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  child:
                      isRequesting.value
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
                            'Send One-Time Password',
                            style: TextStyle(fontSize: 16),
                          ),
                ),
              ),

              // Additional help text
              // Text(
              //   'Check your email inbox (and spam folder) for the one-time password. The OTP will expire in 15 minutes for security purposes.',
              //   style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              //     color: Theme.of(context).colorScheme.onSurfaceVariant,
              //   ),
              // ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: FilledButton.tonal(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasswordResetScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text(
                    'I have reset code',
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

  Future<TenantDetails?> _showTenantSelector(
    BuildContext context,
    WidgetRef ref,
  ) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder:
          (context) => TenantSelectorSheet(
            onTenantSelected: (tenant) {
              Navigator.pop(context, tenant);
            },
          ),
    );
  }
}

final _selectedTenantProvider = StateProvider<TenantDetails?>((ref) => null);

class TenantSelectorSheet extends HookConsumerWidget {
  final Function(TenantDetails) onTenantSelected;

  const TenantSelectorSheet({super.key, required this.onTenantSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tenantSearchController = useTextEditingController();
    final searchTerm = useState('');
    final filteredSchools = ref.watch(tenantListProvider(searchTerm.value));
    final selectedTenant = ref.watch(_selectedTenantProvider);

    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // Handle bar
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          Text(
            'Select School',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          TextField(
            controller: tenantSearchController,
            onChanged: (value) {
              searchTerm.value = value;
            },
            decoration: InputDecoration(
              filled: true,
              hintText: "Search schools...",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(16.0),
                child:
                    filteredSchools.isLoading
                        ? CircularProgressIndicator(
                          constraints: BoxConstraints.tightFor(
                            width: 18,
                            height: 18,
                          ),
                          strokeWidth: 1.5,
                          valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        )
                        : null,
              ),
            ),
          ),

          const SizedBox(height: 16.0),

          Expanded(
            child: filteredSchools.when(
              data: (tenants) {
                return tenants.isEmpty
                    ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 24.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_off,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant
                                    .withValues(alpha: 0.6),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                'No schools found',
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant
                                      .withValues(alpha: 0.6),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                    : ListView.builder(
                      itemCount: tenants.length,
                      itemBuilder: (context, index) {
                        final tenant = tenants[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 2.0,
                            right: 2.0,
                            bottom: 16.0,
                          ),
                          child: Material(
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              side:
                                  tenant.username == selectedTenant?.username
                                      ? BorderSide(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.inversePrimary,
                                      )
                                      : BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(child: Icon(Icons.school)),
                              title: Text(tenant.name),
                              subtitle: Text(tenant.username),
                              onTap: () => onTenantSelected(tenant),
                            ),
                          ),
                        );
                      },
                    );
              },
              error: (error, stack) => Center(child: Text("Error: $error")),
              loading:
                  () => Column(
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Shimmer.fromColors(
                          baseColor: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.1),
                          highlightColor: Theme.of(
                            context,
                          ).colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                          child: Container(
                            height: 64,
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
