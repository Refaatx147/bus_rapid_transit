
import 'package:bus_rapid_transit/core/utils/responsive/screen_util_init/screen_util_init.dart';
import 'package:bus_rapid_transit/features/auth/presentation/screens/success_screen.dart';
import 'package:bus_rapid_transit/features/home/presentation/screens/home_screen.dart';
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
        theme: ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionColor: Colors.white.withAlpha(100),
      selectionHandleColor: Colors.white,           
    ),
  ),

      home: HomeScreen()
    );
  }
}
