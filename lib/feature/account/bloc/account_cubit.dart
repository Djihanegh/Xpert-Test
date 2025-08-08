import 'package:xpert_test/feature/account/model/account.dart';
import 'package:xpert_test/feature/account/repository/account_repository.dart';

import '../../../core/bloc/items_cubit.dart';

class AccountsCubit extends ItemsCubit<Account, AccountRepository> {
  AccountsCubit({
    required AccountRepository articleRepository,
  }) : super(itemRepository: articleRepository);

  void getAll() {
    load();
  }
}
