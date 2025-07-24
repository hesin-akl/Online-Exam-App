import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';

class CustomTxtFieldWidget extends StatelessWidget {
  TextEditingController controller;
  final String hintTxt;
 final  String label;
  bool isSearch;
  Function(String)? onChanged;
  String? Function(String?)? validator;
   CustomTxtFieldWidget({super.key,
     required this.hintTxt,
      this.label="",
     required this.controller ,
     required this.validator,
     this.isSearch=false,
     this.onChanged
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,

      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        prefixIcon: isSearch==true?Icon(Icons.search,color: AppColors.gray,):
        null,
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
