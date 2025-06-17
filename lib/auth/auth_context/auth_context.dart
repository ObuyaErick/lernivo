import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lernivo/auth/granted_authority/granted_authority.dart';
import 'package:lernivo/auth/principal/principal.dart';
import 'package:lernivo/auth/tenant/tenant_details.dart';

part 'auth_context.freezed.dart';
part 'auth_context.g.dart';

@freezed
sealed class AuthContext with _$AuthContext {
  factory AuthContext({
    required List<GrantedAuthority> authorities,
    required Principal principal,
    required TenantDetails tenant,
  }) = _AuthContext;

  factory AuthContext.fromJson(Map<String, dynamic> json) =>
      _$AuthContextFromJson(json);
}
