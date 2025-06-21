// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiSuccess<T> {

 T get data; String get message;
/// Create a copy of ApiSuccess
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiSuccessCopyWith<T, ApiSuccess<T>> get copyWith => _$ApiSuccessCopyWithImpl<T, ApiSuccess<T>>(this as ApiSuccess<T>, _$identity);

  /// Serializes this ApiSuccess to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiSuccess<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'ApiSuccess<$T>(data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $ApiSuccessCopyWith<T,$Res>  {
  factory $ApiSuccessCopyWith(ApiSuccess<T> value, $Res Function(ApiSuccess<T>) _then) = _$ApiSuccessCopyWithImpl;
@useResult
$Res call({
 T data, String message
});




}
/// @nodoc
class _$ApiSuccessCopyWithImpl<T,$Res>
    implements $ApiSuccessCopyWith<T, $Res> {
  _$ApiSuccessCopyWithImpl(this._self, this._then);

  final ApiSuccess<T> _self;
  final $Res Function(ApiSuccess<T>) _then;

/// Create a copy of ApiSuccess
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiSuccess<T> implements ApiSuccess<T> {
  const _ApiSuccess({required this.data, required this.message});
  factory _ApiSuccess.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiSuccessFromJson(json,fromJsonT);

@override final  T data;
@override final  String message;

/// Create a copy of ApiSuccess
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiSuccessCopyWith<T, _ApiSuccess<T>> get copyWith => __$ApiSuccessCopyWithImpl<T, _ApiSuccess<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiSuccessToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiSuccess<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'ApiSuccess<$T>(data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ApiSuccessCopyWith<T,$Res> implements $ApiSuccessCopyWith<T, $Res> {
  factory _$ApiSuccessCopyWith(_ApiSuccess<T> value, $Res Function(_ApiSuccess<T>) _then) = __$ApiSuccessCopyWithImpl;
@override @useResult
$Res call({
 T data, String message
});




}
/// @nodoc
class __$ApiSuccessCopyWithImpl<T,$Res>
    implements _$ApiSuccessCopyWith<T, $Res> {
  __$ApiSuccessCopyWithImpl(this._self, this._then);

  final _ApiSuccess<T> _self;
  final $Res Function(_ApiSuccess<T>) _then;

/// Create a copy of ApiSuccess
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = null,}) {
  return _then(_ApiSuccess<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
