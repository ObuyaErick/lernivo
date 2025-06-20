import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_request_dto.freezed.dart';
part 'password_reset_request_dto.g.dart';

@freezed
sealed class PasswordResetRequestDto with _$PasswordResetRequestDto {
  factory PasswordResetRequestDto({
    required String tenant,
    required String username,
  }) = _PasswordResetRequestDto;

  factory PasswordResetRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetRequestDtoFromJson(json);
}
