import 'package:location_tracker_flutter/data/model/account_response.dart';
import 'package:location_tracker_flutter/domain/entities/account_model.dart';

abstract class AccountRepository {
  List<AccountModel> getUsers();
  void addAccount(AccountModel objAccountModel);
  void deleteAccount(int index);
  void updateAccount(int index, AccountModel objAccountModel);
}