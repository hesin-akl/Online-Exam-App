import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

abstract class Styles{
  static  TextStyle style20=GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black[0],
  );
  static  TextStyle style18=GoogleFonts.inter(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black[0],
  );

  static  TextStyle style14= GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.lightGray,
  );
  static  TextStyle style16= GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static  TextStyle style13= GoogleFonts.inter(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.black[0],
  );
  static  TextStyle style12= GoogleFonts.inter(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.gray,
  );
}