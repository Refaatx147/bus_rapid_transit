import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/register_form/custom_date_form_field.dart';
import 'package:bus_rapid_transit/features/auth/presentation/widgets/auth_widgets/register_form/custom_drop_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthFormField extends StatefulWidget {
  const  AuthFormField({super.key, required this.isRegister,required this.formKey});
final GlobalKey<FormState> formKey;


final bool isRegister;

  @override
  State<AuthFormField> createState() => _AuthFormFieldState();
}

class _AuthFormFieldState extends State<AuthFormField> {

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      padding: EdgeInsets.only( bottom: 20.h),
      physics: BouncingScrollPhysics(),
      child: Form(
      
           key: widget.formKey,
           child: Padding(
             padding:  EdgeInsets.symmetric(horizontal: 25.w),
             child: Column(
               children: [
                  CustomTextFormField(
                    labelWhenFocused: 'Email',
                    labelWhenNotFocused: 'Email Address',
                    hint: 'Enter your email address',
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 18.h),
                  CustomTextFormField(labelWhenFocused: 'Password', labelWhenNotFocused: 'Password', hint: 'Enter your password', isPassword: true, keyboardType: TextInputType.visiblePassword, controller: _passwordController,validator: (String? value) {
                    if(value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                    
                  },),
                  SizedBox(height: 18.h),
                  widget.isRegister?  GenderDropdownField() : SizedBox.shrink(),
                  SizedBox(height: 18.h),
                  widget.isRegister? DatePickerField():SizedBox.shrink()
               ],
             ),
           ),
      ),
    );
  }
}