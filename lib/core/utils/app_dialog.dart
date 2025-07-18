import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
abstract class AppDialog {
  static void showDialogLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Row(
          children: [
            LoadingAnimationWidget.inkDrop(
                color: AppColors.blue,
                size: 30.0),
            SizedBox(width: 15),
            Text(
              "Loading..",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  static void showDialogError(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.error,size: 34,
              color: AppColors.red,),
            SizedBox(width: 10.0,),
            Text(
              " Erorr",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.red,
              ),
            ),
          ],
        ),
        content: Text(
          error,
          style: GoogleFonts.inter(
            fontSize: 16.0,

            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}