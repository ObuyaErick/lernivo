// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInDto {

 String get tenant; String get username; String get password;
/// Create a copy of SignInDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInDtoCopyWith<SignInDto> get copyWith => _$SignInDtoCopyWithImpl<SignInDto>(this as SignInDto, _$identity);

  /// Serializes this SignInDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInDto&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenant,username,password);

@override
String toString() {
  return 'SignInDto(tenant: $tenant, username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInDtoCopyWith<$Res>  {
  factory $SignInDtoCopyWith(SignInDto value, $Res Function(SignInDto) _then) = _$SignInDtoCopyWithImpl;
@useResult
$Res call({
 String tenant, String username, String password
});




}
/// @nodoc
class _$SignInDtoCopyWithImpl<$Res>
    implements $SignInDtoCopyWith<$Res> {
  _$SignInDtoCopyWithImpl(this._self, this._then);

  final SignInDto _self;
  final $Res Function(SignInDto) _then;

/// Create a copy of SignInDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tenant = null,Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignInDto implements SignInDto {
   _SignInDto({required this.tenant, required this.username, required this.password});
  factory _SignInDto.fromJson(Map<String, dynamic> json) => _$SignInDtoFromJson(json);

@override final  String tenant;
@override final  String username;
@override final  String password;

/// Create a copy of SignInDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInDtoCopyWith<_SignInDto> get copyWith => __$SignInDtoCopyWithImpl<_SignInDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInDto&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenant,username,password);

@override
String toString() {
  return 'SignInDto(tenant: $tenant, username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInDtoCopyWith<$Res> implements $SignInDtoCopyWith<$Res> {
  factory _$SignInDtoCopyWith(_SignInDto value, $Res Function(_SignInDto) _then) = __$SignInDtoCopyWithImpl;
@override @useResult
$Res call({
 String tenant, String username, String password
});




}
/// @nodoc
class __$SignInDtoCopyWithImpl<$Res>
    implements _$SignInDtoCopyWith<$Res> {
  __$SignInDtoCopyWithImpl(this._self, this._then);

  final _SignInDto _self;
  final $Res Function(_SignInDto) _then;

/// Create a copy of SignInDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tenant = null,Object? username = null,Object? password = null,}) {
  return _then(_SignInDto(
tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
