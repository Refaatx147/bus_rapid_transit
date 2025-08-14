import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderDropdownField extends StatefulWidget {
  const GenderDropdownField({super.key});

  @override
  State<GenderDropdownField> createState() => _GenderDropdownFieldState();
}

class _GenderDropdownFieldState extends State<GenderDropdownField> {
  String? selectedGender;
  final FocusNode _genderFocusNode = FocusNode();
  bool _isGenderFocused = false;

  @override
  void initState() {
    super.initState();
    _genderFocusNode.addListener(() {
      setState(() {
        _isGenderFocused = _genderFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _genderFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
      isExpanded:false,
      focusNode: _genderFocusNode,
      value: selectedGender,
      decoration: InputDecoration(
isDense: true,
  contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
        maintainHintHeight: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ConstColors.mainText, width: 1.w),
        ),
        constraints: BoxConstraints(maxWidth: 380.w),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'Gender',
        labelStyle:
            _isGenderFocused ? TextsStyles.labelFocusText : TextsStyles.labelText,
        hintText: 'Select your gender',
        
        hintStyle: TextsStyles.subtitleLoginText,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide:
              BorderSide(color: ConstColors.errorBorderColor, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ConstColors.mainText, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ConstColors.mainText, width: 1.w),
        ),
      ),
      dropdownStyleData: DropdownStyleData(
        
        offset: Offset(0, -2.h),
        direction: DropdownDirection.textDirection,
        width: 360,
        
        decoration: BoxDecoration(

          color: ConstColors.dropdownButtonColor,
          borderRadius: BorderRadius.circular(7.r),
          border: Border.all(
            color: ConstColors.mainText,
            width: 1.w,
          ),
        ),
      ),
     style: TextsStyles.dropFocusText,
      items: ['Male', 'Female']
          .map((gender) => DropdownMenuItem(

                value: gender,
                child: Text(
                  gender,
                  style: TextsStyles.inputFocusText,
                ),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select your gender';
        }
        return null;
      },
    );
  }
}
