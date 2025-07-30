import 'package:flutter/material.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

class LoadingAnimationComponemt extends StatelessWidget {
  const LoadingAnimationComponemt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.inkDrop(color:AppColors.blue,
          size:  40.sp),
    );
  }
}
