import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.meaningText, required this.buttonText, required this.onPressed});
  final String meaningText;
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [
  Text(meaningText,style: TextsStyles.meaningText,),
  TextButton(
    onPressed: onPressed,
    child: Text(buttonText,style: TextsStyles.signButton,),
  ),
],
    );
  }
}