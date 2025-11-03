import 'package:bus_rapid_transit/config/routes/app_arguments.dart';
import 'package:bus_rapid_transit/config/routes/navigation_service.dart';
import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/features/reservation/presentation/widgets/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class TicketDetailsScreen extends StatelessWidget {
   TicketDetailsScreen({super.key, TicketDetailsArguments? arguments});

final NavigationService _navigationGetIt = GetIt.instance<NavigationService>();
 void _onBackPressed() {
          _navigationGetIt.goBack();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.mainText,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 270.h,
                  decoration: BoxDecoration(color: ConstColors.homeButtonColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.r),bottomRight: Radius.circular(40.r))
          )
        ,  child:Stack(
            children: [
                Positioned(width: 380.w,top: 20.h,height: 250.h,child: ClipRRect(borderRadius: BorderRadius.only(bottomRight:Radius.elliptical( 45.r,65.r),),child: Image.asset('assets/images/ticket_images/Ellipse9.png',fit: BoxFit.fill,)),),
                Positioned(top: 50.h,height: 220.h,width: 400.w,child:ClipRRect(borderRadius: BorderRadius.only(bottomLeft:Radius.elliptical( 40.r,40.r)),child: Image.asset('assets/images/ticket_images/Ellipse8.png',fit: BoxFit.fill),),),
                 Positioned(left: 12.w,top: 80.h,child:  IconButton(onPressed: _onBackPressed, icon: Icon(Icons.keyboard_arrow_left_sharp,size: 37.sp,color: ConstColors.mainText,)) )
        
          ],
          )
          ,  
          ),
          ],
        ),
                      Positioned(top: 160.h,left: 30.w,child: TicketCard( ))

   ] ),
    );
  }
}