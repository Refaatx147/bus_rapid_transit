import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

// أمثلة للقيم (بدلهم بالقيم الحقيقية عندك)




class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  DateTime? selectedDate;
  final TextEditingController _dateController = TextEditingController();
  final FocusNode _dateFocusNode = FocusNode();
  bool _isDateFocused = false;

  @override
  void initState() {
    super.initState();
    _dateFocusNode.addListener(() {
      setState(() {
        _isDateFocused = _dateFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _dateController.dispose();
    _dateFocusNode.dispose();
    super.dispose();
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      confirmText: 'Select',
      cancelText: 'Cancel',
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme:  ColorScheme.light(
              primary: ConstColors.clickedButton, // لون الأزرار
              onPrimary: ConstColors.mainText, // لون النص فوق الأزرار
              onSurface: ConstColors.dropdownButtonColor, // لون النصوص
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,

      style: TextsStyles.inputFocusText,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: _dateController,
      focusNode: _dateFocusNode,
      readOnly: true,
      onTap: () => _pickDate(context),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'Date of Birth',
        labelStyle:
            _isDateFocused ? TextsStyles.labelFocusText : TextsStyles.labelText,
        hintText: 'Select your date',
        hintStyle: TextsStyles.subtitleLoginText,
        suffixIcon:  Icon(Icons.calendar_today, color: ConstColors.mainText,size: 20.sp,),
        
        errorBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(5.r),
          borderSide:
              BorderSide(color: ConstColors.errorBorderColor, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(

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
        contentPadding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        isDense: true,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select your date';
        }
        return null;
      },
    );
  }
}
