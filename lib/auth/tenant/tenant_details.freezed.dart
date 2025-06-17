// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TenantDetails {

 String get id; String get username; String get name; String get email; String get address; String get logo;
/// Create a copy of TenantDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantDetailsCopyWith<TenantDetails> get copyWith => _$TenantDetailsCopyWithImpl<TenantDetails>(this as TenantDetails, _$identity);

  /// Serializes this TenantDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,name,email,address,logo);

@override
String toString() {
  return 'TenantDetails(id: $id, username: $username, name: $name, email: $email, address: $address, logo: $logo)';
}


}

/// @nodoc
abstract mixin class $TenantDetailsCopyWith<$Res>  {
  factory $TenantDetailsCopyWith(TenantDetails value, $Res Function(TenantDetails) _then) = _$TenantDetailsCopyWithImpl;
@useResult
$Res call({
 String id, String username, String name, String email, String address, String logo
});




}
/// @nodoc
class _$TenantDetailsCopyWithImpl<$Res>
    implements $TenantDetailsCopyWith<$Res> {
  _$TenantDetailsCopyWithImpl(this._self, this._then);

  final TenantDetails _self;
  final $Res Function(TenantDetails) _then;

/// Create a copy of TenantDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? name = null,Object? email = null,Object? address = null,Object? logo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TenantDetails implements TenantDetails {
   _TenantDetails({required this.id, required this.username, required this.name, required this.email, required this.address, required this.logo});
  factory _TenantDetails.fromJson(Map<String, dynamic> json) => _$TenantDetailsFromJson(json);

@override final  String id;
@override final  String username;
@override final  String name;
@override final  String email;
@override final  String address;
@override final  String logo;

/// Create a copy of TenantDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantDetailsCopyWith<_TenantDetails> get copyWith => __$TenantDetailsCopyWithImpl<_TenantDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,name,email,address,logo);

@override
String toString() {
  return 'TenantDetails(id: $id, username: $username, name: $name, email: $email, address: $address, logo: $logo)';
}


}

/// @nodoc
abstract mixin class _$TenantDetailsCopyWith<$Res> implements $TenantDetailsCopyWith<$Res> {
  factory _$TenantDetailsCopyWith(_TenantDetails value, $Res Function(_TenantDetails) _then) = __$TenantDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, String username, String name, String email, String address, String logo
});




}
/// @nodoc
class __$TenantDetailsCopyWithImpl<$Res>
    implements _$TenantDetailsCopyWith<$Res> {
  __$TenantDetailsCopyWithImpl(this._self, this._then);

  final _TenantDetails _self;
  final $Res Function(_TenantDetails) _then;

/// Create a copy of TenantDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? name = null,Object? email = null,Object? address = null,Object? logo = null,}) {
  return _then(_TenantDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
