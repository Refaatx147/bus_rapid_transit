import 'package:flutter/material.dart';

class CustomTextDeparture extends StatelessWidget {
  const CustomTextDeparture({super.key, required this.text, required this.style});
final String text;
final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: style);
  }
}