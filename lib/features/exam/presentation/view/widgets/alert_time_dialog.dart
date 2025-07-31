import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_btn_widget.dart';

class AlertTimeDialog extends StatelessWidget {
  const AlertTimeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      
      content:Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/sand-clock .png",
                  width:45.w ,height: 86.h,fit: BoxFit.cover,),
                SizedBox(width: 16.w,),
                Text("Time Out!!",style: GoogleFonts.inter(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.red
                ),)
              ],
            ),
            SizedBox(height: 24.h,),
            CustomBtnWidget(txt: "View Score",onPressed: (){},)
          ],
        ),
      ) ,
    );
  }
}
