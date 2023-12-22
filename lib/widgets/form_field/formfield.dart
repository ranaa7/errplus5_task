// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../config/style/app_colors.dart';

class FormFieldComponent extends StatelessWidget {
  FormFieldComponent({super.key , required this.text , required this.validator , required this.hinttext});
  var text = TextEditingController();
   String? Function(String?)? validator;
   String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: text,
      validator: validator,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(

        hintText: hinttext,

        hintStyle: TextStyle(color:AppColors.grey7),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 20.h,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide:
          BorderSide(color: AppColors.black),

        ),

        filled: true,  // Set to true to fill the background
        fillColor: AppColors.black,


      ),
    );
  }
}
