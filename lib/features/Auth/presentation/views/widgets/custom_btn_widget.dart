import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

class CustomBtnWidget extends StatelessWidget {
  const CustomBtnWidget({super.key, required this.txt,
    this.onPressed});
  final String txt;

 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(

          backgroundColor: AppColors.blue[0],
        foregroundColor: AppColors.white,
         shape: RoundedRectangleBorder(
borderRadius: BorderRadiusGeometry.circular(30.r)
        ),
          fixedSize: Size(MediaQuery.of(context).size.width,
              50.h)
        ),

        onPressed: onPressed,
        child: Text("$txt",style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          color: AppColors.white,
          fontSize: 16.sp
        ),));
  }
}
