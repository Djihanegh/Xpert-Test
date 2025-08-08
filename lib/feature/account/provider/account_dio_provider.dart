import '../../../core/provider/dio_http_provider.dart';

class AccountDioProvider extends DioHttpProvider {
  AccountDioProvider()
      : super(
          baseUrl: 'API_ENDPOINT/',
        );

  Future<Map<String, dynamic>> getAccount(int id) async {
    final result = await get('account/$id');
    return result.data!;
  }

  Future<Map<String, dynamic>> getAll() async {
    final result = await get('accounts');
    return result.data!;
  }
}
