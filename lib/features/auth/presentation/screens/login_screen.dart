// ignore_for_file: avoid_print

import 'package:bus_rapid_transit/config/routes/app_arguments.dart';
import 'package:bus_rapid_transit/config/routes/navigation_service.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/background_widget.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/clicked_button.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/login_form/forgot_password.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/login_form/auth_form_field.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/check_box.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/postfix_appbar_icon.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/prefix_appbar_icon.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/sign_button.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/background_overlay.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/custom_welcome_text.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/custom_subtitle_text.dart';
import 'package:bus_rapid_transit/core/utils/shared_widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key, AuthArguments? arguments});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

final NavigationService _navigationGetIt = GetIt.instance<NavigationService>();
 void _onLoginPressed() {
    if (_formKey.currentState!.validate()) {
      _navigationGetIt.navigateTo('/doneLogin');
    } else {
      print("Form is invalid ❌");
    }
  }
  void _onSignUpPressed() {
          _navigationGetIt.navigateTo('/register');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,

    
      body: SingleChildScrollView(
       child:   ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
        child: Stack(
          children: [
            
            BackgroundWidget(),
           PrefixAppbarIcon(),
            
            PostfixAppbarIcon()
          ,
        BackgroundOverlay(),
           PositionedWidget(left: 23.w,
              bottom: 365.h,
              height: 55.h,
              width: 220.w,
              child: 
CustomWelcomeText(text: 'Welcome back!', style: TextsStyles.titleLoginText!)            ),
            PositionedWidget(left: 25.w,
              bottom: 327.h,
              height: 55.h,
              width: 230.w,
              child: 
CustomSubtitleText(text: 'Enter your email and password\nto enjoy the experience',style: TextsStyles.subtitleLoginText!,)            ),
              PositionedWidget(
              top: 495.h,
                height: 300.h,
                width: 380.w,
                child:AuthFormField(isRegister: false,formKey: _formKey,)
              ),
               PositionedWidget(
                left: 189.w,
             top: 610.h,
              height: 100.h,
              width: 200.w,
              child: ForgotPassword()
            ),
            PositionedWidget(
             left: 13.w,
              bottom: 118.h,
              height: 30.h,
              width: 111.w,
              child: CustomCheckBox()
            ),
 PositionedWidget(
              bottom: 55.h,
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: ClickedButton(text: 'Log in',style: TextsStyles.clickedButton ,onPressed: _onLoginPressed,isRegisterSuccess: false,)
            ),
             PositionedWidget(
              left: 70.w,
              bottom: 5.h,
              height: 50.h,
              width: 215.w,
              child: SignButton(meaningText: 'Do not have an account?', buttonText: 'Sign up now', onPressed: _onSignUpPressed,)
            ),

        ]
            ),
      ),
      ),
      
      
      );
  }
}