import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onTap});


 final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return 
InkWell(
onTap: onTap,
child: 
Container(width: 290.w,
padding: EdgeInsets.only(top: 12.h),
height: 50.h,
decoration: BoxDecoration(
  color: ConstColors.homeBackground,
    borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ConstColors.homeBackground)           
                    
) 
,child: 
 

      Text('Find Transportation',style: TextsStyles.labelCustomHome ,textAlign: TextAlign.center,),
    
    
 ));
  }
}