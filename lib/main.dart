import 'package:bus_rapid_transit/core/utils/responsive/screen_util_init/screen_util_init.dart';
import 'package:bus_rapid_transit/features/auth/presentation/screens/login_screen.dart';
import 'package:bus_rapid_transit/features/auth/presentation/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
   runApp(
    ScreenUtil()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginScreen()
    );
  }
}
