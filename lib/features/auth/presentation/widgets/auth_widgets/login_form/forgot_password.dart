import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Forgot your password?', style: TextsStyles.buttonPasswordText),
      onPressed: () {

      },
    );
  }
}