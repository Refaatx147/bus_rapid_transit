import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelWhenFocused;
  final String labelWhenNotFocused;
  final String hint;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.labelWhenFocused,
    required this.labelWhenNotFocused,
    required this.hint,
    this.isPassword = false,
    required this.keyboardType,
    this.validator,
    required this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });

    _obscureText = widget.isPassword;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      focusNode: _focusNode,
      obscureText: _obscureText,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      cursorColor: ConstColors.labelText,
      cursorHeight: 20.h,
      style: TextsStyles.inputFocusText,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(

        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: _isFocused
            ? widget.labelWhenFocused
            : widget.labelWhenNotFocused,
        labelStyle:
            _isFocused ? TextsStyles.labelFocusText : TextsStyles.labelText,
        hintText: widget.hint,
        hintStyle: TextsStyles.subtitleLoginText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ConstColors.mainText, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide:
              BorderSide(color: ConstColors.errorBorderColor, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ConstColors.mainText, width: 1.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide:
              BorderSide(color: ConstColors.errorBorderColor, width: 1.w),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
              icon: Icon(
                _obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility,
                color: ConstColors.mainText,
                size: 22.sp,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            )
            : null,
      ),
    );
  }
}
