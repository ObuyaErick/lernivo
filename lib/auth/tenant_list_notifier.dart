import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/api/api_response/api_success/api_success.dart';
import 'package:lernivo/api/base_url.dart';
import 'package:lernivo/auth/tenant/tenant_details.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TenantList extends FamilyAsyncNotifier<List<TenantDetails>, String> {
  @override
  Future<List<TenantDetails>> build(String arg) async {
    final response = await http.get(Uri.parse("$baseUrl/tenants?q=$arg"));

    if (response.statusCode < 400) {
      final tenants =
          ApiSuccess.fromJson(json.decode(response.body), (json) {
            return (json as List<dynamic>)
                .map((json) => TenantDetails.fromJson(json))
                .toList();
          }).data;
      return tenants;
    } else {
      return [];
    }
  }
}
