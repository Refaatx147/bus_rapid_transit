import 'package:bus_rapid_transit/core/utils/theme/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClickedButton extends StatelessWidget {
  const ClickedButton({super.key, required this.text, required this.onPressed, required this.style, required this.isRegisterSuccess});
final String text;
final Function() onPressed;
final TextStyle? style;
final bool isRegisterSuccess;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22.0.w),
      child: ElevatedButton(

       style:isRegisterSuccess? Buttons.authRegisterButton: Buttons.authLoginButton,
        onPressed: onPressed,
        child: Text(text,style: style ,),
      ),
    );
  }
}