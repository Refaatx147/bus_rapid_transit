import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DepartureColoredWidget extends StatelessWidget {
  const DepartureColoredWidget(this.borderColor, {super.key, required this.fillColor});

final Color fillColor;
final Color? borderColor; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.5.h,
      width: 8.5.w,
      decoration: BoxDecoration(
        
        color: fillColor,
       borderRadius: BorderRadius.circular(12.r,),

        border: Border.all(color: borderColor?? fillColor,
      
        )
      ),
    );
  }
}