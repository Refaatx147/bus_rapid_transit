import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bus_rapid_transit/core/utils/theme/colors.dart';

class Buttons {
  
static  ButtonStyle authLoginButton =
    ElevatedButton.styleFrom(
        backgroundColor: ConstColors.clickedButton ,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      );

      static  ButtonStyle authRegisterButton =
    ElevatedButton.styleFrom(
        backgroundColor: ConstColors.successButtonColor ,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      );
}