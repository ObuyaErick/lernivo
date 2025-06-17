// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TenantDetails _$TenantDetailsFromJson(Map<String, dynamic> json) =>
    _TenantDetails(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$TenantDetailsToJson(_TenantDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'logo': instance.logo,
    };
