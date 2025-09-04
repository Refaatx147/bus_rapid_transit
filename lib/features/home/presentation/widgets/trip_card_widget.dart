import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_text_departure.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/departure_colored_widget.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/departure_widget.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/line_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripCardWidget extends StatelessWidget {
  const TripCardWidget({super.key, required this.firstLineName, required this.secondLineName, required this.distance, required this.date, required this.ticketPrice});
final String firstLineName;
final String secondLineName;
final String distance;
final String date;
final String ticketPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 238.h,
      decoration: BoxDecoration(
        color: ConstColors.mainText,
        borderRadius: BorderRadius.circular(7.r),
        border: Border.all(color: ConstColors.labelText.withAlpha(30))
      ),
      child:Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 20.h,),child:  Column(
children: [
  Row(
    children: [
      SizedBox(width: 4.w,),
      Image.asset('assets/images/home_screen_images/rhombus.png',height: 10.h,width: 10.w,),
      SizedBox(width: 8.w,),
LineNameWidget(lineName:firstLineName),
      SizedBox(width: 20.w,),
      Column(
        children: [
          Text('BRT',style:TextsStyles.brtText ,)
          ,Text('Bus Rapid Transit',style: TextsStyles.subBrtText,),
        ],
      ),
            SizedBox(width: 20.w,),
            Icon(Icons.location_on,color: ConstColors.homeButtonColor,size: 16.sp,),
                  SizedBox(width: 8.w,),

LineNameWidget(lineName:secondLineName),



   ],
  ),
  SizedBox(height: 15.w,),
  Divider(color:ConstColors.labelText.withAlpha(30) ,),
Padding(padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 10.h),child:   Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         CustomTextDeparture(text: 'Departure',style: TextsStyles.homeLabelText!,),
         CustomTextDeparture(text: 'Distance',style: TextsStyles.homeLabelText!,),
        ],
      ),
      SizedBox(height: 5.h,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextDeparture(text: date,style: TextsStyles.homeDateText,),
          CustomTextDeparture(text: distance,style: TextsStyles.homeDateText,)
        ],
      )
,    SizedBox(height: 12.h,),
Row(
  children: [
    DepartureColoredWidget(fillColor: ConstColors.departureColor,null)
,    SizedBox(width: 2.w,),

    DepartureWidget(),
        DepartureWidget()
       , Text('- - - ',style: TextsStyles.homeDash,),
Icon(Icons.bus_alert_sharp,color: ConstColors.homeBackground,size: 28.sp,),
SizedBox(width: 2.w,),
 DepartureWidget(),
        DepartureWidget(),
       Text('- - - ',style: TextsStyles.homeDash,),
       DepartureColoredWidget(fillColor: ConstColors.mainText,ConstColors.departureColor)

  ],
),
SizedBox(height: 20.h,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(ticketPrice,style: TextsStyles.ticketPriceText,),
      SizedBox(width: 8.w,),
      Text('Ticket Price',style: TextsStyles.homeDash,),
    ],
  ),
  InkWell(onTap: (){}, child: Text('View Details',style: TextStyle(color: ConstColors.departureColor,fontSize: 11.5.sp,fontFamily: 'Poppins'),))
],
)
    
    ],
  )
)
],
      ),
    ));
  }
}