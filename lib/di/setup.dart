import 'package:get_it/get_it.dart';
import 'package:uzum_bank/core/api/auth_api/auth_api.dart';
import '../core/api/auth_api/api_base.dart';

final di = GetIt.instance;

 setup(){
  // di.registerLazySingleton(() => Box);
  // di.registerLazySingleton(() => HiveHelper(di.get()));

  di.registerLazySingleton(() => ApiBase());
  di.registerLazySingleton(()=>AuthApi(di.get()));
}