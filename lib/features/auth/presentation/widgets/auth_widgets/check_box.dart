import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isChecked = false; // الحالة

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Checkbox(
            value: _isChecked,
            activeColor: ConstColors.mainText,  
            checkColor: ConstColors.clickedButton,  
            fillColor: WidgetStatePropertyAll(ConstColors.mainText),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue ?? false;
              });
            },
          ),
          Text(
            'Remember me',
            style: TextsStyles.rememberText,
          ),
        ],
      ),
    );
  }
}
