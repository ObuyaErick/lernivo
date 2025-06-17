// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthContext {

 List<GrantedAuthority> get authorities; Principal get principal; TenantDetails get tenant;
/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthContextCopyWith<AuthContext> get copyWith => _$AuthContextCopyWithImpl<AuthContext>(this as AuthContext, _$identity);

  /// Serializes this AuthContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthContext&&const DeepCollectionEquality().equals(other.authorities, authorities)&&(identical(other.principal, principal) || other.principal == principal)&&(identical(other.tenant, tenant) || other.tenant == tenant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(authorities),principal,tenant);

@override
String toString() {
  return 'AuthContext(authorities: $authorities, principal: $principal, tenant: $tenant)';
}


}

/// @nodoc
abstract mixin class $AuthContextCopyWith<$Res>  {
  factory $AuthContextCopyWith(AuthContext value, $Res Function(AuthContext) _then) = _$AuthContextCopyWithImpl;
@useResult
$Res call({
 List<GrantedAuthority> authorities, Principal principal, TenantDetails tenant
});


$PrincipalCopyWith<$Res> get principal;$TenantDetailsCopyWith<$Res> get tenant;

}
/// @nodoc
class _$AuthContextCopyWithImpl<$Res>
    implements $AuthContextCopyWith<$Res> {
  _$AuthContextCopyWithImpl(this._self, this._then);

  final AuthContext _self;
  final $Res Function(AuthContext) _then;

/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorities = null,Object? principal = null,Object? tenant = null,}) {
  return _then(_self.copyWith(
authorities: null == authorities ? _self.authorities : authorities // ignore: cast_nullable_to_non_nullable
as List<GrantedAuthority>,principal: null == principal ? _self.principal : principal // ignore: cast_nullable_to_non_nullable
as Principal,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantDetails,
  ));
}
/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrincipalCopyWith<$Res> get principal {
  
  return $PrincipalCopyWith<$Res>(_self.principal, (value) {
    return _then(_self.copyWith(principal: value));
  });
}/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantDetailsCopyWith<$Res> get tenant {
  
  return $TenantDetailsCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AuthContext implements AuthContext {
   _AuthContext({required final  List<GrantedAuthority> authorities, required this.principal, required this.tenant}): _authorities = authorities;
  factory _AuthContext.fromJson(Map<String, dynamic> json) => _$AuthContextFromJson(json);

 final  List<GrantedAuthority> _authorities;
@override List<GrantedAuthority> get authorities {
  if (_authorities is EqualUnmodifiableListView) return _authorities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_authorities);
}

@override final  Principal principal;
@override final  TenantDetails tenant;

/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthContextCopyWith<_AuthContext> get copyWith => __$AuthContextCopyWithImpl<_AuthContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthContext&&const DeepCollectionEquality().equals(other._authorities, _authorities)&&(identical(other.principal, principal) || other.principal == principal)&&(identical(other.tenant, tenant) || other.tenant == tenant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_authorities),principal,tenant);

@override
String toString() {
  return 'AuthContext(authorities: $authorities, principal: $principal, tenant: $tenant)';
}


}

/// @nodoc
abstract mixin class _$AuthContextCopyWith<$Res> implements $AuthContextCopyWith<$Res> {
  factory _$AuthContextCopyWith(_AuthContext value, $Res Function(_AuthContext) _then) = __$AuthContextCopyWithImpl;
@override @useResult
$Res call({
 List<GrantedAuthority> authorities, Principal principal, TenantDetails tenant
});


@override $PrincipalCopyWith<$Res> get principal;@override $TenantDetailsCopyWith<$Res> get tenant;

}
/// @nodoc
class __$AuthContextCopyWithImpl<$Res>
    implements _$AuthContextCopyWith<$Res> {
  __$AuthContextCopyWithImpl(this._self, this._then);

  final _AuthContext _self;
  final $Res Function(_AuthContext) _then;

/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorities = null,Object? principal = null,Object? tenant = null,}) {
  return _then(_AuthContext(
authorities: null == authorities ? _self._authorities : authorities // ignore: cast_nullable_to_non_nullable
as List<GrantedAuthority>,principal: null == principal ? _self.principal : principal // ignore: cast_nullable_to_non_nullable
as Principal,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantDetails,
  ));
}

/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrincipalCopyWith<$Res> get principal {
  
  return $PrincipalCopyWith<$Res>(_self.principal, (value) {
    return _then(_self.copyWith(principal: value));
  });
}/// Create a copy of AuthContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantDetailsCopyWith<$Res> get tenant {
  
  return $TenantDetailsCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}
}

// dart format on
