import 'package:bus_rapid_transit/features/auth/presentation/widgets/positioned_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostfixAppbarIcon extends StatelessWidget {
  const PostfixAppbarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return     PositionedWidget(top: 61.h,
            right: 23.w,
              height: 39.h,
              width: 38.w,child:  InkWell(
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
                 borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20.sp,)
              )
            ));
  }
}