// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiSuccess<T> _$ApiSuccessFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiSuccess<T>(
  data: fromJsonT(json['data']),
  message: json['message'] as String,
);

Map<String, dynamic> _$ApiSuccessToJson<T>(
  _ApiSuccess<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': toJsonT(instance.data),
  'message': instance.message,
};
