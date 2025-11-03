import 'package:bus_rapid_transit/config/routes/navigation_service.dart';
import 'package:bus_rapid_transit/core/utils/shared_widgets/positioned_widget.dart';
import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_button.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_container_widget.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_label_text.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_line_field.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_line_widget.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_navbar.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_notification_icon.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/fawry_custom_widget.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/navigation_item.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/reservation_date_custom_widget.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/trip_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NavigationService _navigationGetIt = GetIt.instance<NavigationService>();
 void _onShowAllPressed() {
          _navigationGetIt.navigateTo('/ticketReservation');
  }
  
static const List<NavigationItem> _navigationItems = [
    NavigationItem(
      label: 'الرئيسية', 
      icon: Icons.home_outlined,

    ),
    NavigationItem(
      label: 'فحص التذكرة', 
      icon: Icons.add_card_outlined,
    ),
    NavigationItem(
      label: 'أخرى', 
      icon: Icons.table_rows_rounded,
    ),
  ];

  int _selectedIndex = 0;
  void onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 1) {
        _navigationGetIt.navigateTo('/ticketDetails');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
     bottomNavigationBar: CustomNavbar(
       navItems: _navigationItems,
       selectedIndex: _selectedIndex,
       onTapItem: onTapItem,

     ),
      backgroundColor: Color(0xffFFFFFF),
      body:  SingleChildScrollView(
        child: Column(
          children: [
Stack(
        
        children: [
        Column(
          children: [

          
 CustomContainerWidget(height: 280.h,backColor: ConstColors.homeBackground,),
       CustomContainerWidget(height: 450.h,backColor: ConstColors.mainText,),

          ]  
        ),
          PositionedWidget(
            left: 100.w,
            child: Image.asset('assets/images/home_screen_images/Rectangle146.png'),
          ),PositionedWidget(
            left: 55.w,
            child: Image.asset('assets/images/home_screen_images/Rectangle147.png'),
          ), 
          
          PositionedWidget(
            top: 100.h,
            left: 22.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Morning Dear,',style: TextsStyles.headHomeText,),
                SizedBox(height: 5.h,),
                Text('Where Are You\nGoing Today?',style: TextsStyles.titleHomeText,),
              ],
            ),
          ),
          PositionedWidget(
            top: 125.h,
            right: 22.w,
            child: Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                color: ConstColors.mainText,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                   PositionedWidget(
                    top: 3.5.h,
                    left: 4.5.w,
                    child: Icon(Icons.notifications_none,color: ConstColors.ringIconColor,size: 16.sp,)),
              
                  PositionedWidget(
top: 6.h,
left: 13.5.w,
                    child: CustomNotificationIcon()
                  ),
                   ],
              ),
            )
          ),
    
    PositionedWidget(
      height: 500.h,
      top:   190.h,
      left: 24.w,
      child: 
          Container(
        alignment: Alignment.center,
        width: 325.w,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
                    height: 500.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(15),
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
          color: ConstColors.cardBackgroundColor,
          borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
             children: [
              Padding(
                padding:  EdgeInsets.all(10.r),
                child: Container(
                  width: 290.w,
                  height: 50.h,
                
                decoration: BoxDecoration(color: Color(0xffFEFEFE),          borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color:Color(0xffFEFEFE) )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomLabelText(labelText: 'Available Lines',),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomLineWidget(lineColor: ConstColors.redLineColor, lineText: 'Al Qalyubia',),
                        CustomLineWidget(lineColor: ConstColors.orangeLineColor, lineText: 'Giza',),
                        CustomLineWidget(lineColor: ConstColors.purpleLineColor, lineText: 'Cairo',),
                      ],
                    )
                 
                 
                 
                  ],
                ),
                ),
              )
          
        ,Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child:
                
                Column(

                children: [
                 Row(
                  children: [
                   CustomLineField(hintText: 'مثال: المعادي', labelText: 'From',width: 122.5.w,height: 45.h,)
                    ,

                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: ConstColors.swapButtonColor,
                            borderRadius: BorderRadius.circular(17.5.r),
                          ),
                          child: Icon(
                            Icons.swap_horiz_outlined,
                            color: ConstColors.mainText,
                            size: 20.sp,
                          
                        ),
                    
                    ),
                    
                    
                   CustomLineField(hintText: 'مثال: جسر السويس', labelText: 'To',width: 122.5.w,height: 45.h)

                  ],
                ),
                SizedBox(height: 20.h,),
                CustomLineField(labelText: 'Ticket Count', hintText: 'Example:1', height: 45.h, width: 290.w)
                          ,      SizedBox(height: 20.h,),
ReserveDatePickerField(),
                               SizedBox(height: 20.h,),

FawryCustomWidget(),
                               SizedBox(height: 20.h,),
                CustomLineField(labelText: 'Expected Price', hintText: '150 EGP', height: 45.h, width: 290.w)
                           ,    SizedBox(height: 20.h,),

 CustomButton(onTap: () {
 },)
 ]
              ),
        ),
          
             ], 
            ),
      ),
    
    ),
    

  
     ] ),

     Padding(padding: EdgeInsets.only(left: 25.w,right:25.w,bottom: 20.h),
     child: 
      Column(
        

    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('My Trips',style: TextsStyles.tripText,),
          InkWell(onTap: _onShowAllPressed,child: Text('Show All',style:TextsStyles.tripSecondText ,),)

        ],
      ),
      SizedBox(height: 10.h,),
TripCardWidget(date: '1, APR 2026', distance: '35km', ticketPrice: 'EGP 150',firstLineName: 'AL ZAHRAA',secondLineName: 'AL SALAM',),
    ],
    )

      )]),)
     
      );
  }
}
