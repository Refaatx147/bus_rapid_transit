import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
final double? top;
final double? height;
final double? width;
final double? left;
final double? right;
final double? bottom;
final Widget child;
  const PositionedWidget({super.key,  this.top,  this.height,  this.width,  this.left,  this.right,  this.bottom, required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom ,
      left: left ,
      right: right ,
      top: top ,
      height: height ,
      width: width ,
            child: child
          );
            }
}