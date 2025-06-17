import 'package:freezed_annotation/freezed_annotation.dart';

part 'principal.freezed.dart';
part 'principal.g.dart';

@freezed
sealed class Principal with _$Principal {
  factory Principal({
    required String id,
    required String username,
    required String email,
    required String role,
  }) = _Principal;

  factory Principal.fromJson(Map<String, dynamic> json) =>
      _$PrincipalFromJson(json);
}
