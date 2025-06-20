// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordResetRequestDto _$PasswordResetRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PasswordResetRequestDto(
  tenant: json['tenant'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$PasswordResetRequestDtoToJson(
  _PasswordResetRequestDto instance,
) => <String, dynamic>{
  'tenant': instance.tenant,
  'username': instance.username,
};
