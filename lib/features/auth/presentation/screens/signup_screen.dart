// ignore_for_file: avoid_print

import 'package:bus_rapid_transit/config/routes/app_arguments.dart';
import 'package:bus_rapid_transit/config/routes/navigation_service.dart' show NavigationService;
import 'package:flutter/material.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/background_widget.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/clicked_button.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/login_form/auth_form_field.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/postfix_appbar_icon.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/prefix_appbar_icon.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/sign_button.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/background_overlay.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/custom_welcome_text.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/custom_subtitle_text.dart';
import 'package:bus_rapid_transit/core/utils/shared_widgets/positioned_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
class SignupScreen extends StatelessWidget {
   SignupScreen({super.key, AuthArguments? arguments});
final NavigationService _navigationGetIt = GetIt.instance<NavigationService>();


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
void _onRegisterPressed() {
    if (_formKey.currentState!.validate()) {
      _navigationGetIt.navigateTo('/doneRegister');
    } else {
      print("Form is invalid ❌");
    }
  }
  void _onLoginPressed() {
          _navigationGetIt.navigateTo('/login');
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
             PostfixAppbarIcon(),
        BackgroundOverlay(),
           PositionedWidget(left: 23.w,
              bottom: 430.h,
              height:80.h,
              width: 300.w,
              child: 
CustomWelcomeText(text: 'Let\'s get started! Create\nyour account easily', style: TextsStyles.titleSignupText)            ),
            PositionedWidget(left: 25.w,
              bottom: 377.h,
              height: 55.h,
              width: 270.w,
              child: 
CustomSubtitleText(text: 'Enter your basic information to join us',style: TextsStyles.subtitleSignUpText!,)            ),
              PositionedWidget(
              top: 425.h,
                height: 300.h,
                width: 380.w,
                child:AuthFormField(isRegister: true,formKey: _formKey,)
              ),
 PositionedWidget(
              bottom: 55.h,
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: ClickedButton(text: 'Sign up now',style: TextsStyles.clickedButton ,onPressed: _onRegisterPressed,isRegisterSuccess: false,)
            ),
             PositionedWidget(
              left: 70.w,
              bottom: 5.h,
              height: 50.h,
              width: 215.w,
              child: SignButton(meaningText: 'Already have an account?', buttonText: 'Log in now', onPressed: _onLoginPressed,)
            ),

        ]
            ),
      ),
      ),
      
      
    );
  }
}