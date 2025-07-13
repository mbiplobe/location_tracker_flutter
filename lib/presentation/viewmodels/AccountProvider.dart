import 'package:flutter/material.dart';

import '../../domain/entities/account_model.dart';
import '../../domain/usecase/GetAccountUseCases.dart';

class AccountProvider extends ChangeNotifier
{
 final GetAccountUsecases _getAccountUsecases;

 List<AccountModel> _accounts = [];
  List<AccountModel> get accounts => _accounts;

  String? _error;
  bool _loading = false;
  String? get error => _error;
  bool get isLoading => _loading;

 AccountProvider(this._getAccountUsecases);

 void addAccount(AccountModel objAccountModel) async {
   _getAccountUsecases.addAccount(objAccountModel);
 }

 void deleteAccount(int index) async {
   _getAccountUsecases.deleteAccount(index);
 }

 void updateAccount(int index, AccountModel objAccountModel) async {
   _getAccountUsecases.updateAccount(index, objAccountModel);
 }

 void fetchAccounts() async {
   try {
     _loading = true;
     _accounts = await _getAccountUsecases.call();;
   } catch (e) {
     _error = e.toString();
   } finally {
     _loading = false;
     notifyListeners();
   }
 }

}