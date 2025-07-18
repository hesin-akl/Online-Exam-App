import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';

class CustomTxtFieldWidget extends StatelessWidget {
  TextEditingController controller;
  final String hintTxt;
  final String label;

  String? Function(String?)? validator;
   CustomTxtFieldWidget({super.key,
     required this.hintTxt,
     required this.label,
     required this.controller ,
     required this.validator,
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        label: Text(label,style: Styles.style12,),

        hintText: hintTxt,
        hintStyle: Styles.style14,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            color: AppColors.gray)
        ),
        focusedBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
        borderSide: BorderSide(
            color: AppColors.gray
        )
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
        borderSide: BorderSide(
            color: AppColors.red
        )
    ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                color: AppColors.red
            )
        )
      ),
    );
  }
}
