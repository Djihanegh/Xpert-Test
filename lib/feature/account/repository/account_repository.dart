import 'package:xpert_test/core/exceptions/app_exception.dart';

import '../../../core/repository/item_repository.dart';
import '../model/account.dart';
import '../provider/account_dio_provider.dart';

class AccountRepository extends ItemRepository<Account> {
  AccountRepository({
    required this.httpProvider,
  });

  final AccountDioProvider httpProvider;

  @override
  Future<List<Account>> getAll() async {
    try {
      final data = await httpProvider.getAll();

      if (data is List) {
        return (data as List).map((e) => Account.fromJson(e)).toList();
      } else if (data is Map<String, dynamic>) {
        return [Account.fromJson(data)];
      } else {
        throw FormatException('Unexpected data format');
      }
    } catch (e, st) {
      throw AppException.createAndLog('Failed to load accounts', e, st);
    }
  }
}
