import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_details.freezed.dart';
part 'tenant_details.g.dart';

@freezed
sealed class TenantDetails with _$TenantDetails {
  factory TenantDetails({
    required String id,
    required String username,
    required String name,
    required String email,
    required String address,
    required String logo,
  }) = _TenantDetails;

  factory TenantDetails.fromJson(Map<String, dynamic> json) =>
      _$TenantDetailsFromJson(json);
}
