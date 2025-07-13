import 'package:hive/hive.dart';
import 'package:location_tracker_flutter/data/model/account_response.dart';

class LocalDataSource
{
  final Box<AccountResponse> _AccountBox = Hive.box<AccountResponse>('accountBox');

  List<AccountResponse> getAccounts() => _AccountBox.values.toList();

  void addAccount(AccountResponse objAccountResponse) => _AccountBox.add(objAccountResponse);

  void deleteAccount(int index) => _AccountBox.deleteAt(index);

  void updateAccount(int index, AccountResponse objAccountResponse) => _AccountBox.putAt(index, objAccountResponse);
}