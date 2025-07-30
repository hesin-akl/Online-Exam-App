import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';

class ExamSubjectItem extends StatelessWidget {
   ExamSubjectItem({required this.examEntity,required this.image});
ExamEntity examEntity;
final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(examEntity.title!,style: Styles.style18,),
        SizedBox(height: 24.h,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.7),
                spreadRadius: 4,
                blurRadius: 3,
                offset: Offset(3, 3), // changes position of shadow
              ),
            ],
            
          ),
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
        Image.network(image,
        width: 60.w,
          height:71.h ,
          fit: BoxFit.cover,
        ),
              SizedBox(width: 16.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(examEntity.active!?"Active Now":"Not Active",style: Styles.style16,),
                  SizedBox(height: 5.h,),
                  Text(examEntity.numberOfQuestions!.toString(),
                    style: Styles.style13.copyWith(
                    color:AppColors.gray
                  ),),
                  SizedBox(height: 20.h,),
                  //From: 1.00   To: 6.00
                  Text(examEntity.createdAt!.substring(0,9),
                    style: Styles.style16,),
                ],
              ),
              Spacer(),
        Text("${examEntity.duration!} minutes",
                   textAlign: TextAlign.end,
                   style: Styles.style16.copyWith(
                  color: AppColors.blue
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
