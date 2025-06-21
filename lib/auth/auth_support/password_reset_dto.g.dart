// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordResetDto _$PasswordResetDtoFromJson(Map<String, dynamic> json) =>
    _PasswordResetDto(
      tenant: json['tenant'] as String,
      newPassword: json['newPassword'] as String,
      confirmNewPassword: json['confirmNewPassword'] as String,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$PasswordResetDtoToJson(_PasswordResetDto instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'newPassword': instance.newPassword,
      'confirmNewPassword': instance.confirmNewPassword,
      'otp': instance.otp,
    };
