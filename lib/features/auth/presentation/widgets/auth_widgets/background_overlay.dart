import 'package:bus_rapid_transit/features/auth/presentation/widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundOverlay extends StatelessWidget {
  const BackgroundOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return  PositionedWidget(
            height: 700.h,
            width: 380.w,
            child: 
            Image.asset('assets/images/image.png',fit: BoxFit.fill,),);
  }
}