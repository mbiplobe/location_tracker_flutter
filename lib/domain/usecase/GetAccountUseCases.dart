import 'package:location_tracker_flutter/domain/entities/account_model.dart';
import 'package:location_tracker_flutter/domain/repositories/AccountRepository.dart';

import '../../data/model/account_response.dart';

class GetAccountUsecases
{
  final AccountRepository _accountRepository;

  GetAccountUsecases(this._accountRepository);

  Future<List<AccountModel>> call() async {
    return _accountRepository.getUsers();
  }

  Future<void> addAccount(AccountModel objAccountModel) async {
    _accountRepository.addAccount(objAccountModel);
  }

  Future<void> deleteAccount(int index) async {
    _accountRepository.deleteAccount(index);
  }

  Future<void> updateAccount(int index, AccountModel objAccountModel) async {
    _accountRepository.updateAccount(index, objAccountModel);
  }


}