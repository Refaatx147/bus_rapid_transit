import 'package:bus_rapid_transit/features/home/presentation/widgets/custom_line_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLineWidget extends StatelessWidget {
  const CustomLineWidget({super.key, required this.lineColor, required this.lineText});

final Color lineColor;
final String lineText;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
Container(
  width: 11.w,
  height: 11.h,
  decoration: BoxDecoration(
      color: lineColor,

                        borderRadius: BorderRadius.all(Radius.elliptical(3.h, 3.w)),
)  ),

SizedBox(
  width: 6.w,
),
CustomLineText(lineText:lineText )    ],
    );
  }
}