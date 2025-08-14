// ignore_for_file: must_be_immutable



import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.splashBackground,
      body: Stack(
        children: [
          PositionedWidget(
            top: 40.h,
            height: 290.h,
            width: 160.w,
            child: Image.asset('assets/images/splash_images/BackgroundShape.png',fit: BoxFit.fill,),
          ),
          PositionedWidget(
            left: 260.w,
            bottom: 190.h,
            height: 350.h,
            width: 120.w,
            child: Image.asset('assets/images/splash_images/halfBackgroundShape.png',fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('BRT \n Bus Rapid Transit', style: TextsStyles.splashTextTitle,),
          ),
          PositionedWidget(
            right: 20.w,
            bottom: 45.h,
            height: 58.h,
            width: 58.w,
            child: Image.asset('assets/images/splash_images/MinistryLogoContainer.png',fit: BoxFit.fill),
          ),
          PositionedWidget(right: 54.w,
            bottom: 38.h,
            
            height: 55.h,
            width: 100.w,
            child: 
          Text(' وزارة النقل ',style: TextsStyles.splashTextBottom,),
          ),PositionedWidget(right: 67.w,
            bottom: 20.h,
            height: 55.h,
            width: 115.w,child: 
          Text(' الأتوبيس الترددي ',style: TextsStyles.splashTextBottom,),
          )
        ],

        
      ),
    );
  }
}