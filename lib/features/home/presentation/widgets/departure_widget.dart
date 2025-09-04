import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepartureWidget extends StatelessWidget {
  const DepartureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        SizedBox(width: 1.w,),
        Text('- - - ',style: TextsStyles.homeDash,),
        Icon(Icons.arrow_forward_outlined,color: ConstColors.clickedButton,size: 13.sp,)
      ],
    );
  }
}