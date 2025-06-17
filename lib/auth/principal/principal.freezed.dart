// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'principal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Principal {

 String get id; String get username; String get email; String get role;
/// Create a copy of Principal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrincipalCopyWith<Principal> get copyWith => _$PrincipalCopyWithImpl<Principal>(this as Principal, _$identity);

  /// Serializes this Principal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Principal&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,role);

@override
String toString() {
  return 'Principal(id: $id, username: $username, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class $PrincipalCopyWith<$Res>  {
  factory $PrincipalCopyWith(Principal value, $Res Function(Principal) _then) = _$PrincipalCopyWithImpl;
@useResult
$Res call({
 String id, String username, String email, String role
});




}
/// @nodoc
class _$PrincipalCopyWithImpl<$Res>
    implements $PrincipalCopyWith<$Res> {
  _$PrincipalCopyWithImpl(this._self, this._then);

  final Principal _self;
  final $Res Function(Principal) _then;

/// Create a copy of Principal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Principal implements Principal {
   _Principal({required this.id, required this.username, required this.email, required this.role});
  factory _Principal.fromJson(Map<String, dynamic> json) => _$PrincipalFromJson(json);

@override final  String id;
@override final  String username;
@override final  String email;
@override final  String role;

/// Create a copy of Principal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrincipalCopyWith<_Principal> get copyWith => __$PrincipalCopyWithImpl<_Principal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrincipalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Principal&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,role);

@override
String toString() {
  return 'Principal(id: $id, username: $username, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class _$PrincipalCopyWith<$Res> implements $PrincipalCopyWith<$Res> {
  factory _$PrincipalCopyWith(_Principal value, $Res Function(_Principal) _then) = __$PrincipalCopyWithImpl;
@override @useResult
$Res call({
 String id, String username, String email, String role
});




}
/// @nodoc
class __$PrincipalCopyWithImpl<$Res>
    implements _$PrincipalCopyWith<$Res> {
  __$PrincipalCopyWithImpl(this._self, this._then);

  final _Principal _self;
  final $Res Function(_Principal) _then;

/// Create a copy of Principal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? role = null,}) {
  return _then(_Principal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
