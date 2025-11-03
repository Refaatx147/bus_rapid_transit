import 'package:bus_rapid_transit/config/routes/app_arguments.dart';
import 'package:bus_rapid_transit/config/routes/navigation_service.dart';
import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/trip_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class TicketReservation extends StatelessWidget {
   TicketReservation({super.key, TicketReservationArguments? arguments});
final NavigationService _navigationGetIt = GetIt.instance<NavigationService>();
 void _onBackPressed() {
          _navigationGetIt.goBack();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ConstColors.mainText ,
     body: Column(
      children: [
        Container(
          height: 140.h,
        decoration: BoxDecoration(color: ConstColors.homeButtonColor)
      ,  child:Stack(
          children: [
            Positioned(top: 10.h,left: 5.w,height: 300.h,width: 620.w,child: Image.asset('assets/images/ticket_images/Ellipse7.png',fit: BoxFit.fill,),),
                    Positioned(top: 10.h,height: 140.h,child: Image.asset('assets/images/ticket_images/Ellipse6.png',fit: BoxFit.fill,),),
                 Positioned(left: 105.w,top: 75.h,child:    Text('Ticket Reservation',style: TextsStyles.titleTicketText,))
              ,          Positioned(left: 5.w,top: 62.h,child:  IconButton(onPressed: _onBackPressed, icon: Icon(Icons.keyboard_arrow_left_outlined,size: 35.sp,color: ConstColors.mainText,)) )

        ],
        )
        ,  
        )
   ,Flexible(
     child: ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical
      ,itemBuilder: (context, index) {
     
      return Padding(
        padding:  EdgeInsets.only(bottom: 20.h,left: 25.w,right: 25.w),
        child: TripCardWidget(firstLineName: 'AL ZAHRAA', secondLineName: 'Al SALAM', distance: '10 km', date: '2023-10-10', ticketPrice: 'EGP 5.00'),
      );
      
     },),
   )
   
      ],
     ),
    );
  }
}