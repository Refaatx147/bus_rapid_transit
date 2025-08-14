import 'package:bus_rapid_transit/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtil extends StatelessWidget {
  const ScreenUtil({super.key});

  @override
  Widget build(BuildContext context) {
  return  ScreenUtilInit(
      designSize: const Size(375, 812),   
      minTextAdapt: true,
      builder: (_, __) => MyApp(),
    );
  }
}