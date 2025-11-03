import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class TicketDataTextWidget extends StatelessWidget {
  const TicketDataTextWidget({super.key, required this.firstText, required this.secondText});


final String firstText;
final String secondText;
  @override
  Widget build(BuildContext context) {
    return  Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(firstText,style: TextsStyles.ticketInformationFirstText,),
        Text(secondText,style: TextsStyles.ticketInformationSecondText,)
      ],
    );
  }
}