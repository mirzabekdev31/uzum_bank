import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uzum_bank/core/hive/hive_helper.dart';

class ApiBase{

  final _dio = Dio(BaseOptions(
    baseUrl: "http://206.189.128.74/api",
    connectTimeout: 60000,
  ));

  Dio get dio => _dio;


  // Future<void> saveToken(String token) async => await _hive.saveToken(token);
  //
  // String get token => _hive.token;

}