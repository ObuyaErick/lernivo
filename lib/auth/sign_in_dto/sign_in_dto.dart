import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_dto.freezed.dart';
part 'sign_in_dto.g.dart';

@freezed
sealed class SignInDto with _$SignInDto {
  factory SignInDto({
    required String tenant,
    required String username,
    required String password,
  }) = _SignInDto;

  factory SignInDto.fromJson(Map<String, dynamic> json) =>
      _$SignInDtoFromJson(json);
}
