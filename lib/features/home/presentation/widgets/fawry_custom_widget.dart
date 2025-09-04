import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FawryCustomWidget extends StatelessWidget {
  const FawryCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 6.h),
height: 65.h,
width:290.w ,
decoration: BoxDecoration(
  color: ConstColors.mainText,
  borderRadius: BorderRadius.all(Radius.circular(12.r)),
  border: Border.all(color: ConstColors.unfocusedBorderColor)
),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Payment Methods',style: TextsStyles.labelHomeText,),
    SizedBox(height: 5.h,),
Row(
  children: [
    Image.asset('assets/images/home_screen_images/fawry.png',fit: BoxFit.cover,height: 20.h,width: 60.w,),
    SizedBox(width: 8.w,),
    Text('Fawry Method',style: TextsStyles.labelTextFawry,),
  ],
)
  ],
),
    );
  }
}