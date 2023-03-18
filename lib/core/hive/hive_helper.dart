import 'package:hive/hive.dart';
import 'package:uzum_bank/core/hive/hive_base.dart';

class HiveHelper{
  final HiveBase _hiveBase;

  HiveHelper(this._hiveBase);

  String get token => _hiveBase.userBox.get("token");

  Future<void> saveToken(String token) async => await _hiveBase.userBox.put("token", token);
}