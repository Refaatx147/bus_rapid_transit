import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class LineNameWidget extends StatelessWidget {
  const LineNameWidget({super.key, required this.lineName});

final String lineName;
  @override
  Widget build(BuildContext context) {
    return       Text(lineName,style: TextsStyles.lineLabelText,);

  }
}