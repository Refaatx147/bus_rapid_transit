import 'package:bus_rapid_transit/core/databases/cache/cache_helper.dart';
import 'package:bus_rapid_transit/features/auth/data/datasources/local_data_source/auth_local_data_source.dart';

 class AuthLocalDataSourceImpl implements AuthLocalDataSource {

  CacheHelper cacheHelper = CacheHelper();

@override
  Future<void> setIsLoggedIn(bool isLoggedIn) async {
    await cacheHelper.saveData(key:'isLoggedIn',value: isLoggedIn);
  }

  @override
  Future<bool> getIsLoggedIn() async {
    return cacheHelper.getData(key: 'isLoggedIn') ?? false;
  }
}