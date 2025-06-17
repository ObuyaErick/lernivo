// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInState _$SignInStateFromJson(Map<String, dynamic> json) => _SignInState(
  message: json['message'] as String,
  accessToken: json['accessToken'] as String,
);

Map<String, dynamic> _$SignInStateToJson(_SignInState instance) =>
    <String, dynamic>{
      'message': instance.message,
      'accessToken': instance.accessToken,
    };
