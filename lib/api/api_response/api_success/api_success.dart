import 'package:freezed_annotation/freezed_annotation.dart';


part 'api_success.freezed.dart';
part 'api_success.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiSuccess<T> with _$ApiSuccess<T> {
  const factory ApiSuccess({required T data, required String message}) =
      _ApiSuccess<T>;

  factory ApiSuccess.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiSuccessFromJson(json, fromJsonT);
}
