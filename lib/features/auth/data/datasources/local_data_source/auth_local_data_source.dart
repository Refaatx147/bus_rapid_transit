
 abstract class AuthLocalDataSource {

  Future<void> setIsLoggedIn(bool isLoggedIn) ;
  Future<bool> getIsLoggedIn();
}