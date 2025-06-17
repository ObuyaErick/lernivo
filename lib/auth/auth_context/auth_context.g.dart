// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthContext _$AuthContextFromJson(Map<String, dynamic> json) => _AuthContext(
  authorities:
      (json['authorities'] as List<dynamic>)
          .map((e) => GrantedAuthority.fromJson(e as Map<String, dynamic>))
          .toList(),
  principal: Principal.fromJson(json['principal'] as Map<String, dynamic>),
  tenant: TenantDetails.fromJson(json['tenant'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthContextToJson(_AuthContext instance) =>
    <String, dynamic>{
      'authorities': instance.authorities,
      'principal': instance.principal,
      'tenant': instance.tenant,
    };
