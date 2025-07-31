import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/features/exam/data/models/response/questions_by_exams/questions_by_exams_dto.dart';
import 'package:online_exam_app/features/exam/domain/entity/answer_entity.dart';
class AnswerItem extends StatelessWidget {
   AnswerItem({super.key, this.isSelected=false,
     required this.answerEntity});
   bool isSelected ;
 final  AnswerEntity answerEntity;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color:isSelected? AppColors.blue[10]:AppColors.lightBlue,
        borderRadius: BorderRadius.circular(10.r),),
      padding: EdgeInsets.symmetric(
        vertical: 16.h,
        horizontal: 12.w
      ),
      child: Row(
        children: [
isSelected?
Container(
  width: 18.w,
  height: 18.h,
  padding: EdgeInsets.all(2.5),
  decoration: BoxDecoration(
    border: Border.all(
      color: AppColors.blue,width: 2.w
    ),
    shape: BoxShape.circle,
    color: AppColors.white
  ),
  child:CircleAvatar(
    radius: 8.r,
    backgroundColor: AppColors.blue,
   ),

):
Container(
  width: 18.w,
  height: 18.h,
  decoration: BoxDecoration(
      border: Border.all(
          color: AppColors.blue,width: 2.w
      ),
      shape: BoxShape.circle,
      color: AppColors.white
  ),
),
          SizedBox(width: 16.w,),
          Text(answerEntity.answer!,style: Styles.style16.copyWith(
            color: Colors.black
          ),)
        ],
      ),
    );
  }
}
