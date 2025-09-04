import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

                      height: 6.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: ConstColors.mainText,
                        borderRadius: BorderRadius.circular(25.r),
                        
                      ),
                      child: Container(
                        padding: EdgeInsets.all(2.r),
                        height: 3.h,
                        width: 3.w,
                        decoration: BoxDecoration(
                          color: ConstColors.errorBorderColor,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                    );
  }
}