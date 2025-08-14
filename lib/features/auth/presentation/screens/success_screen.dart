// ignore_for_file: avoid_print

import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/background_widget.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/clicked_button.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/postfix_appbar_icon.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/prefix_appbar_icon.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/background_overlay.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.isRegisterSuccess});

final bool isRegisterSuccess;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,

    
      body: Stack(
        children: [
          
          BackgroundWidget(),
             PrefixAppbarIcon(),
          PostfixAppbarIcon(),
          BackgroundOverlay(),
          PositionedWidget(left: 100.w,
            top: 250.h,
            height: 170.h,
            width: 170.w,
            child: Image.asset('assets/images/success_screen_images/confetti_component.png',height: 90.h,width: 50.w,fit: BoxFit.contain,) 
),    
  PositionedWidget(left: 155.w,
            top: 285.h,
            height: 100.h,
            width: 60.w,
            child: Image.asset('assets/images/success_screen_images/Frame.png',height: 60.h,width: 35.w,fit: BoxFit.contain,) 
),   

    PositionedWidget(left: 35.w,
              top:isRegisterSuccess ? 410.h : 405.h,
              height:80.h,
              width: 300.w,
              child: 
Text( isRegisterSuccess? '🎊Your account has been\nsuccessfully created!':'🎉 Login successful!', style: TextsStyles.titleSignupText,textAlign: TextAlign.center,)            ),

 PositionedWidget(left: 22.5.w,
              top:isRegisterSuccess ? 490.h : 455.h,
              height: 80.h,
              width: 330.w,
              child: 
Text(isRegisterSuccess ?'Welcome! Your account has been successfully\nregistered, and you can now browse the latest offers\nand products.': 'Welcome! Enjoy a seamless experience\n and special offers.',style: TextsStyles.subtitleSignUpText!,textAlign: TextAlign.center,)            ),
             
       PositionedWidget(
            bottom:isRegisterSuccess? 185.h:245.h,
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            child: ClickedButton(text: isRegisterSuccess ? 'Go to Login Page' : 'Go to Home Page',style: TextsStyles.clickedButton ,onPressed: (){},isRegisterSuccess: isRegisterSuccess,)
          ),
          
            
      ]
          ),
      
      
      );
  }
}