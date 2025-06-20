// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordResetDto _$PasswordResetDtoFromJson(Map<String, dynamic> json) =>
    _PasswordResetDto(
      tenant: json['tenant'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PasswordResetDtoToJson(_PasswordResetDto instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'username': instance.username,
      'password': instance.password,
    };
