import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';
part 'sign_in_state.g.dart';

@freezed
sealed class SignInState with _$SignInState {
  factory SignInState({required String accessToken}) = _SignInState;

  factory SignInState.fromJson(Map<String, dynamic> json) =>
      _$SignInStateFromJson(json);
}
