import 'package:location_tracker_flutter/data/model/account_response.dart';
import 'package:location_tracker_flutter/domain/entities/account_model.dart';
import 'package:location_tracker_flutter/domain/repositories/AccountRepository.dart';

import '../datasource/local_data_source.dart';

class AccountRepositoryImpl implements AccountRepository
{
  final LocalDataSource _localDataSource;

  AccountRepositoryImpl(this._localDataSource);

  @override
  void addAccount(AccountModel objAccountModel) {
    _localDataSource.addAccount(AccountResponse.fromModel(objAccountModel));
  }

  @override
  void deleteAccount(int index) {
    _localDataSource.deleteAccount(index);
  }

  @override
  List<AccountModel> getUsers() {
   return _localDataSource.getAccounts().map((e) => e.toModel()).toList();
  }

  @override
  void updateAccount(int index, AccountModel objAccountModel) {
    return _localDataSource.updateAccount(index, AccountResponse.fromModel(objAccountModel));
  }

}