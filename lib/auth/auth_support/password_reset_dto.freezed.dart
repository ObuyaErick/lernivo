// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResetDto {

 String get tenant; String get newPassword; String get confirmNewPassword; String get otp;
/// Create a copy of PasswordResetDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordResetDtoCopyWith<PasswordResetDto> get copyWith => _$PasswordResetDtoCopyWithImpl<PasswordResetDto>(this as PasswordResetDto, _$identity);

  /// Serializes this PasswordResetDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetDto&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmNewPassword, confirmNewPassword) || other.confirmNewPassword == confirmNewPassword)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenant,newPassword,confirmNewPassword,otp);

@override
String toString() {
  return 'PasswordResetDto(tenant: $tenant, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $PasswordResetDtoCopyWith<$Res>  {
  factory $PasswordResetDtoCopyWith(PasswordResetDto value, $Res Function(PasswordResetDto) _then) = _$PasswordResetDtoCopyWithImpl;
@useResult
$Res call({
 String tenant, String newPassword, String confirmNewPassword, String otp
});




}
/// @nodoc
class _$PasswordResetDtoCopyWithImpl<$Res>
    implements $PasswordResetDtoCopyWith<$Res> {
  _$PasswordResetDtoCopyWithImpl(this._self, this._then);

  final PasswordResetDto _self;
  final $Res Function(PasswordResetDto) _then;

/// Create a copy of PasswordResetDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tenant = null,Object? newPassword = null,Object? confirmNewPassword = null,Object? otp = null,}) {
  return _then(_self.copyWith(
tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmNewPassword: null == confirmNewPassword ? _self.confirmNewPassword : confirmNewPassword // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PasswordResetDto implements PasswordResetDto {
   _PasswordResetDto({required this.tenant, required this.newPassword, required this.confirmNewPassword, required this.otp});
  factory _PasswordResetDto.fromJson(Map<String, dynamic> json) => _$PasswordResetDtoFromJson(json);

@override final  String tenant;
@override final  String newPassword;
@override final  String confirmNewPassword;
@override final  String otp;

/// Create a copy of PasswordResetDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordResetDtoCopyWith<_PasswordResetDto> get copyWith => __$PasswordResetDtoCopyWithImpl<_PasswordResetDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordResetDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordResetDto&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmNewPassword, confirmNewPassword) || other.confirmNewPassword == confirmNewPassword)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenant,newPassword,confirmNewPassword,otp);

@override
String toString() {
  return 'PasswordResetDto(tenant: $tenant, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$PasswordResetDtoCopyWith<$Res> implements $PasswordResetDtoCopyWith<$Res> {
  factory _$PasswordResetDtoCopyWith(_PasswordResetDto value, $Res Function(_PasswordResetDto) _then) = __$PasswordResetDtoCopyWithImpl;
@override @useResult
$Res call({
 String tenant, String newPassword, String confirmNewPassword, String otp
});




}
/// @nodoc
class __$PasswordResetDtoCopyWithImpl<$Res>
    implements _$PasswordResetDtoCopyWith<$Res> {
  __$PasswordResetDtoCopyWithImpl(this._self, this._then);

  final _PasswordResetDto _self;
  final $Res Function(_PasswordResetDto) _then;

/// Create a copy of PasswordResetDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tenant = null,Object? newPassword = null,Object? confirmNewPassword = null,Object? otp = null,}) {
  return _then(_PasswordResetDto(
tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,confirmNewPassword: null == confirmNewPassword ? _self.confirmNewPassword : confirmNewPassword // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
