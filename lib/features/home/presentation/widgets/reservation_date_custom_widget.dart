import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/core/utils/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ReserveDatePickerField extends StatefulWidget {
  const ReserveDatePickerField({super.key});

  @override
  State<ReserveDatePickerField> createState() => _ReserveDatePickerFieldState();
}

class _ReserveDatePickerFieldState extends State<ReserveDatePickerField> {
  DateTime? selectedDate;
  final TextEditingController _dateController = TextEditingController();
  final FocusNode _dateFocusNode = FocusNode();
  // ignore: unused_field
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
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: ConstColors.clickedButton,
              onPrimary: ConstColors.mainText,
              onSurface: ConstColors.dropdownButtonColor,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat('dd, MMM yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
     
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
 style: TextsStyles.inputTextFieldLine,
                             onTapOutside: (event) => FocusScope.of(context).unfocus(),          controller: _dateController,
          focusNode: _dateFocusNode,
          readOnly: true,
          onTap: () => _pickDate(context),
          decoration: InputDecoration(
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
             focusedBorder:OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ConstColors.swapButtonColor)),
            disabledBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: ConstColors.unfocusedBorderColor)
                          ), 
                          border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: ConstColors.unfocusedBorderColor)
                          ),
            hintText: 'example : 1, Apr 2003',
            labelText: 'Reservation Date',
                        labelStyle: TextsStyles.labelHomeText,
            hintStyle: TextsStyles.labelHomeText,
            suffixIcon: Icon(
              Icons.calendar_today, 
              color: ConstColors.dropdownButtonColor,
              size: 20.sp,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                color: ConstColors.errorBorderColor, 
                width: 1.w
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                color: ConstColors.errorBorderColor, 
                width: 1.w
              ),
            ),
            
            
enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: ConstColors.unfocusedBorderColor),
          ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.h, 
              horizontal: 16.w
            ),
            isDense: true,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select reservation date';
            }
            return null;
          },
        
    );
  }
}