

import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/reservation/presentation/widgets/brt_ticket.dart';
import 'package:bus_rapid_transit/features/reservation/presentation/widgets/ticket_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketCard extends StatelessWidget {
  final int notchCount;
  
  const TicketCard({
    super.key,
    this.notchCount = 9,
  });

  @override
  Widget build(BuildContext context) {
    return 

  Column(

  children: [
  
  

 
       Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 310.w,
      height: 175.h,
      decoration: BoxDecoration(
        color: ConstColors.mainText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
       boxShadow: [
        BoxShadow(  color:  const Color.fromARGB(255, 212, 211, 211).withAlpha(120),
        offset: Offset(0, 1),
        )
       ]
      ),
      child:  Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 17.w,
vertical: 20.h,
                ),
                child: Column(
                  children: [
                    // Your ticket content here
                    Row(
                      children: [
                    Image.asset('assets/images/ticket_images/number.png',),
                    
                    SizedBox(
                      width: 10.w,
                    ), Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('BRT',style: TextsStyles.ticketTextOne),
                        Text('Ticket #2231',style: TextsStyles.ticketTextTwo,)
                      ],
                     )

                      ],
                    ),
                    SizedBox(height: 15.h,),
                    BrtTicket(firstLineName: 'AL ZAHRAA', secondLineName: 'AL SALAM',),
                    SizedBox(height: 17.h,),

                    TicketInformationWidget()
                  ],
                ),
              ),
    )
  
,

          PhysicalShape(

  clipper: ZigzagClipper(),
  elevation: 30,
  color: Colors.white,
  shadowColor: Colors.black.withAlpha(120),
      child:
       Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 310.w,
      height: 175.h,
      decoration: BoxDecoration(
        color: ConstColors.mainText,
       
      ),
      child:  Padding(
                padding:  EdgeInsets.only(left: 20.0..w,right: 20.0.w,top: 15.0.h,bottom: 18.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Your ticket content here
                    Image.asset('assets/images/ticket_images/qrCode.png',height: 100.h,width: 100.w,),
                    Text('قم بمسح رمز الاستجابة السريعة هذا عند البوابة قبل\n بطاقة الصعود إلى الاوتوبيس',style: TextsStyles.qrText,textAlign: TextAlign.center,),
                  ],
                ),
              ),
    )
  
),
  ]
  );
  }
}

class ZigzagClipper extends CustomClipper<Path> {
  final int notchCount;
  
  ZigzagClipper({this.notchCount = 9});
  
  @override
  Path getClip(Size size) {
    final path = Path();
    final notchDepth = 9.0;
    
    // Draw top edge
    path.lineTo(0, size.height - notchDepth);
    
    // Draw zigzag bottom edge
    final notchWidth = size.width / notchCount;
    
    for (int i = 0; i < notchCount; i++) {
      if (i.isEven) {
        path.lineTo(notchWidth * i, size.height - notchDepth);
        path.lineTo(notchWidth * (i + 0.7), size.height);
      } else {
        path.lineTo(notchWidth * i, size.height);
        path.lineTo(notchWidth * (i + 0.8), size.height - notchDepth);
      }
    }
    
    // Complete the path
    path.lineTo(size.width, size.height - notchDepth);
    path.lineTo(size.width, 0);
    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}