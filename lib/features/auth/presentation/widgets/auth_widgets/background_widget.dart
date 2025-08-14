import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

            height: MediaQuery.of(context).size.height,
            width: double.infinity,
              decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tahrirSquare.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Image.asset('assets/images/OverlayBackground.png',fit: BoxFit.fill,),
        );
  }
}