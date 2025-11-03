// lib/core/services/navigation_service.dart
import 'package:flutter/material.dart';

abstract class NavigationService {
    GlobalKey<NavigatorState> get navigatorKey;

  Future<dynamic> navigateTo(String routeName, {dynamic arguments});
  Future<dynamic> replaceWith(String routeName, {dynamic arguments});
  Future<dynamic> navigateAndRemoveUntil(String routeName, {dynamic arguments});
  void goBack({dynamic result});

}

class NavigationServiceImpl implements NavigationService {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();



  @override
    GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  BuildContext? get currentContext => _navigatorKey.currentContext;

  @override
  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return _navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  @override
  Future<dynamic> replaceWith(String routeName, {dynamic arguments}) {
    return _navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  @override
  Future<dynamic> navigateAndRemoveUntil(String routeName, {dynamic arguments}) {
    return _navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  @override
  void goBack({dynamic result}) {
    return _navigatorKey.currentState!.pop(result);
  }
}