import 'package:bus_rapid_transit/features/auth/presentation/widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Stack(
        children: [
          Container(

            height: double.infinity,
            width: double.infinity,
              decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tahrirSquare.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Image.asset('assets/images/OverlayBackground.png',fit: BoxFit.fill,),
        ),
        PositionedWidget(
          height: 700.h,
          width: 380.w,
          child: Image.asset('assets/images/image.png',fit: BoxFit.fill,),
        )
      ]
    ));
  }
}