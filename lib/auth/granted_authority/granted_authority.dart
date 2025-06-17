import 'package:freezed_annotation/freezed_annotation.dart';

part 'granted_authority.freezed.dart';
part 'granted_authority.g.dart';

@freezed
sealed class GrantedAuthority with _$GrantedAuthority {
  factory GrantedAuthority({required String name}) = _GrantedAuthority;

  factory GrantedAuthority.fromJson(Map<String, dynamic> json) =>
      _$GrantedAuthorityFromJson(json);
}
