import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_dto.freezed.dart';
part 'password_reset_dto.g.dart';

@freezed
sealed class PasswordResetDto with _$PasswordResetDto {
  factory PasswordResetDto({
    required String tenant,
    required String newPassword,
    required String confirmNewPassword,
    required String otp,
  }) = _PasswordResetDto;

  factory PasswordResetDto.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetDtoFromJson(json);
}
