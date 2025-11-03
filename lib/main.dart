
import 'package:bus_rapid_transit/config/dependency_injection.dart';
import 'package:bus_rapid_transit/config/routes/app_routes.dart';
import 'package:bus_rapid_transit/config/routes/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:bus_rapid_transit/config/routes/route_generator.dart';
import 'package:bus_rapid_transit/core/utils/responsive/screen_util_init/screen_util_init.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    setupDependencies();

  Firebase.initializeApp();
   runApp(
    ScreenUtil()
  );
}

class MyApp extends StatelessWidget {
    final NavigationService _navigationService = getIt<NavigationService>();

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
        theme: ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionColor: Colors.white.withAlpha(100),
      selectionHandleColor: Colors.white,           
    ),
  ),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: _navigationService.navigatorKey,
    );
  }
}
