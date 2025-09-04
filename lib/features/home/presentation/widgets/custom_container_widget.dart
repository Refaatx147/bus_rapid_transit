import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key, required this.height, required this.backColor});

  final double height;
  final Color backColor;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: height,
            decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0.r),
              topRight: Radius.circular(16.0.r),
            ),
          ),
        );
  }
}