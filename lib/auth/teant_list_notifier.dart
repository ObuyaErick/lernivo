import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/api.dart';
import 'package:lernivo/auth/tenant/tenant_details.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TenantList extends FamilyAsyncNotifier<List<TenantDetails>, String> {
  @override
  Future<List<TenantDetails>> build(String arg) async {
    final response = await http.get(Uri.parse("$baseUrl/tenants?q=$arg"));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => TenantDetails.fromJson(json)).toList();
    } else {
      return [];
    }
  }
}
