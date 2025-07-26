import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({ required this.subjectEntity});
final SubjectEntity subjectEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(3, 3), // changes position of shadow
          ),
        ],
      ),



      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,

          vertical: 24),
      child: Row(
        children: [
         Image.network(subjectEntity.image!,
           fit: BoxFit.cover,
           width: 50.w,
           height: 50.h,),
          SizedBox(width: 16.0,),
          Text(subjectEntity.name!,style: Styles.style16,)
        ],
      ),
          ),
    );
  }
}