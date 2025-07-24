import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       boxShadow: [
         BoxShadow(
             spreadRadius: 10,
             blurRadius: 10,
             color: AppColors.grey
         )
       ],
     ),
      child: Card(
          elevation: 2,
       shadowColor: AppColors.grey,

          shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(10.r))

      ,  child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,

        vertical: 24),
        child: Row(
            children: [
              Icon(Icons.h_mobiledata),
              SizedBox(width: 16.0,),
              Text("Language",style: Styles.style16,)
            ],
          ),
      ),
      ),
    );
  }
}
//  decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.r),
//         border: Border.all(
//           color:AppColors.grey,width: 1.5.w
//         ),
//         boxShadow: [
//           BoxShadow(
//             spreadRadius: 4,
//             blurRadius: 4,
//             color: AppColors.grey
//           )
//         ]
//       ),