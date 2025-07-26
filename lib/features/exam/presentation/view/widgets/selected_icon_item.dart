import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

class SelectedIconItem extends StatelessWidget {
   SelectedIconItem({super.key, required this.iconData});
final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 64.w,
      height: 32.h,
      decoration: BoxDecoration(
        color: AppColors.blue[10],
borderRadius: BorderRadius.circular(50.r)
      ),
      child: Center(child:
      Icon(iconData,color: AppColors.blue,),),
    );
  }
}
