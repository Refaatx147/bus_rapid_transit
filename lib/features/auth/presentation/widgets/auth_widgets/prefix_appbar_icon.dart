import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:bus_rapid_transit/core/utils/shared_widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrefixAppbarIcon extends StatelessWidget {
  const PrefixAppbarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return   PositionedWidget(top: 61.h,
            left: 23.w,
              height: 39.h,
              width: 85.w,child:   
    InkWell(
              onTap: () {
                
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.white,
                   style: BorderStyle.solid,
                   width: 1.w
                 ),
                 borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12.w,),
                    Text('العربية', style: TextsStyles.localizationText,),
                    SizedBox(width: 8.w,),
                    Icon(Icons.translate, color: Colors.white, size: 13.sp,),
                  ],
                ),
              )
            ));
  }
}