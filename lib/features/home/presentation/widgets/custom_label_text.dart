import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class CustomLabelText extends StatelessWidget {
  const CustomLabelText( {super.key, required this.labelText});

final String labelText;
  @override
  Widget build(BuildContext context) {
    return                     Text(labelText,style: TextsStyles.labelHomeText,);

  }
}