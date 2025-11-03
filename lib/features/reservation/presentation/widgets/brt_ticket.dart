import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/line_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrtTicket extends StatelessWidget {
  const BrtTicket({super.key, required this.firstLineName, required this.secondLineName});
 final String firstLineName;
  final String secondLineName;

  @override
  Widget build(BuildContext context) {
    return  Row(
    children: [
      SizedBox(width: 4.w,),
      Image.asset('assets/images/home_screen_images/rhombus.png',height: 10.h,width: 10.w,),
      SizedBox(width: 8.w,),
LineNameWidget(lineName:firstLineName),
      SizedBox(width: 15.w,),
           Image.asset('assets/images/ticket_images/arrows.png',height: 30.h,width: 60.w,),

            SizedBox(width: 15.w,),
            Icon(Icons.location_on,color: ConstColors.homeButtonColor,size: 16.sp,),
                  SizedBox(width: 8.w,),

LineNameWidget(lineName:secondLineName),



   ],
  );
  }
}