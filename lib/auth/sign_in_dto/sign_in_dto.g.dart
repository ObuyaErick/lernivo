// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInDto _$SignInDtoFromJson(Map<String, dynamic> json) => _SignInDto(
  tenant: json['tenant'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$SignInDtoToJson(_SignInDto instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'username': instance.username,
      'password': instance.password,
    };
