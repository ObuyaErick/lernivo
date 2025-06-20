// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResetRequestDto {

 String get tenant; String get username;
/// Create a copy of PasswordResetRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordResetRequestDtoCopyWith<PasswordResetRequestDto> get copyWith => _$PasswordResetRequestDtoCopyWithImpl<PasswordResetRequestDto>(this as PasswordResetRequestDto, _$identity);

  /// Serializes this PasswordResetRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetRequestDto&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenant,username);

@override
String toString() {
  return 'PasswordResetRequestDto(tenant: $tenant, username: $username)';
}


}

/// @nodoc
abstract mixin class $PasswordResetRequestDtoCopyWith<$Res>  {
  factory $PasswordResetRequestDtoCopyWith(PasswordResetRequestDto value, $Res Function(PasswordResetRequestDto) _then) = _$PasswordResetRequestDtoCopyWithImpl;
@useResult
$Res call({
 String tenant, String username
});




}
/// @nodoc
class _$PasswordResetRequestDtoCopyWithImpl<$Res>
    implements $PasswordResetRequestDtoCopyWith<$Res> {
  _$PasswordResetRequestDtoCopyWithImpl(this._self, this._then);

  final PasswordResetRequestDto _self;
  final $Res Function(PasswordResetRequestDto) _then;

/// Create a copy of PasswordResetRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tenant = null,Object? username = null,}) {
  return _then(_self.copyWith(
tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PasswordResetRequestDto implements PasswordResetRequestDto {
   _PasswordResetRequestDto({required this.tenant, required this.username});
  factory _PasswordResetRequestDto.fromJson(Map<String, dynamic> json) => _$PasswordResetRequestDtoFromJson(json);

@override final  String tenant;
@override final  String username;

/// Create a copy of PasswordResetRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordResetRequestDtoCopyWith<_PasswordResetRequestDto> get copyWith => __$PasswordResetRequestDtoCopyWithImpl<_PasswordResetRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordResetRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordResetRequestDto&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenant,username);

@override
String toString() {
  return 'PasswordResetRequestDto(tenant: $tenant, username: $username)';
}


}

/// @nodoc
abstract mixin class _$PasswordResetRequestDtoCopyWith<$Res> implements $PasswordResetRequestDtoCopyWith<$Res> {
  factory _$PasswordResetRequestDtoCopyWith(_PasswordResetRequestDto value, $Res Function(_PasswordResetRequestDto) _then) = __$PasswordResetRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String tenant, String username
});




}
/// @nodoc
class __$PasswordResetRequestDtoCopyWithImpl<$Res>
    implements _$PasswordResetRequestDtoCopyWith<$Res> {
  __$PasswordResetRequestDtoCopyWithImpl(this._self, this._then);

  final _PasswordResetRequestDto _self;
  final $Res Function(_PasswordResetRequestDto) _then;

/// Create a copy of PasswordResetRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tenant = null,Object? username = null,}) {
  return _then(_PasswordResetRequestDto(
tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
