import 'package:bus_rapid_transit/features/reservation/presentation/widgets/ticket_data_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketInformationWidget extends StatelessWidget {
  const TicketInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       TicketDataTextWidget(
          firstText: 'Departure',
          secondText: '16 Jan 2023',
        ),
        SizedBox(width: 15.w,),
        TicketDataTextWidget(
          firstText: 'Distance',
          secondText: '35 km',
        ),
                SizedBox(width: 15.w,),

         TicketDataTextWidget(
          firstText: 'No.Ticket',
          secondText: '5',
        ),
                SizedBox(width: 20.w,),

         TicketDataTextWidget(
          firstText: 'Price',
          secondText: '120 LE',
        )
      ],
    );
  }
}