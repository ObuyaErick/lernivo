// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'granted_authority.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GrantedAuthority {

 String get name;
/// Create a copy of GrantedAuthority
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrantedAuthorityCopyWith<GrantedAuthority> get copyWith => _$GrantedAuthorityCopyWithImpl<GrantedAuthority>(this as GrantedAuthority, _$identity);

  /// Serializes this GrantedAuthority to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrantedAuthority&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'GrantedAuthority(name: $name)';
}


}

/// @nodoc
abstract mixin class $GrantedAuthorityCopyWith<$Res>  {
  factory $GrantedAuthorityCopyWith(GrantedAuthority value, $Res Function(GrantedAuthority) _then) = _$GrantedAuthorityCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$GrantedAuthorityCopyWithImpl<$Res>
    implements $GrantedAuthorityCopyWith<$Res> {
  _$GrantedAuthorityCopyWithImpl(this._self, this._then);

  final GrantedAuthority _self;
  final $Res Function(GrantedAuthority) _then;

/// Create a copy of GrantedAuthority
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GrantedAuthority implements GrantedAuthority {
   _GrantedAuthority({required this.name});
  factory _GrantedAuthority.fromJson(Map<String, dynamic> json) => _$GrantedAuthorityFromJson(json);

@override final  String name;

/// Create a copy of GrantedAuthority
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrantedAuthorityCopyWith<_GrantedAuthority> get copyWith => __$GrantedAuthorityCopyWithImpl<_GrantedAuthority>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrantedAuthorityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrantedAuthority&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'GrantedAuthority(name: $name)';
}


}

/// @nodoc
abstract mixin class _$GrantedAuthorityCopyWith<$Res> implements $GrantedAuthorityCopyWith<$Res> {
  factory _$GrantedAuthorityCopyWith(_GrantedAuthority value, $Res Function(_GrantedAuthority) _then) = __$GrantedAuthorityCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$GrantedAuthorityCopyWithImpl<$Res>
    implements _$GrantedAuthorityCopyWith<$Res> {
  __$GrantedAuthorityCopyWithImpl(this._self, this._then);

  final _GrantedAuthority _self;
  final $Res Function(_GrantedAuthority) _then;

/// Create a copy of GrantedAuthority
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_GrantedAuthority(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
