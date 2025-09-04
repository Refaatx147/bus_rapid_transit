import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class CustomLineText extends StatelessWidget {
  const CustomLineText({super.key, required this.lineText});

final String lineText;
  @override
  Widget build(BuildContext context) {
    return Text(
lineText,
style: TextsStyles.customLineText,
    );
  }
}