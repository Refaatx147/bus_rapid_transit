import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLineField extends StatelessWidget {
  const CustomLineField({super.key, required this.labelText, required this.hintText,required this.height,required this.width});

final String labelText;
final String hintText;
final double width;
final double height;
  @override

  Widget build(BuildContext context) {
    return    SizedBox(
                      width: width,
                      height: height,
                     
                      
                      child:  TextFormField(
                        
                        style: TextsStyles.inputTextFieldLine,
                             onTapOutside: (event) => FocusScope.of(context).unfocus(),
textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          
fillColor: ConstColors.mainText,
filled: true,
enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: ConstColors.unfocusedBorderColor),
          ),
          
                          contentPadding:                 EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),

                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          alignLabelWithHint: true,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder:OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ConstColors.swapButtonColor)),
                          labelText: labelText,
                          labelStyle: TextsStyles.labelHomeText,
                          hintText: hintText,
                          hintStyle: TextsStyles.labelHomeText,
                        disabledBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: ConstColors.unfocusedBorderColor)
                          ), 
                          border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: ConstColors.unfocusedBorderColor)
                          ), 
                        ),
                          )    );
  }
}