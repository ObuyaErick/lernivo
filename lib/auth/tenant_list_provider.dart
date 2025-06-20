import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lernivo/auth/teant_list_notifier.dart';
import 'package:lernivo/auth/tenant/tenant_details.dart';

final tenantListProvider =
    AsyncNotifierProvider.family<TenantList, List<TenantDetails>, String>(
      TenantList.new,
    );
