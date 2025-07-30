import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/answer_item.dart';

class QuestionItem extends StatelessWidget {
   QuestionItem({super.key,this.onNext,this.onBack, required this.questionEntity});
   void Function()?onNext;
   void Function()?onBack;
 final  QuestionEntity questionEntity;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:  EdgeInsets.all(24.0),
      child: Column(
        children: [
          Text(questionEntity.question!
            ,maxLines: 2,style: Styles.style18.copyWith(
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 16.h,),

            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder:(context,index){
                return SizedBox(height: 16.h,);
              } ,
              itemBuilder: (context,index){
              return AnswerItem(
                answerEntity: questionEntity.answers![index],

               // isSelected: ,
              );
            },itemCount: 4,),

          SizedBox(height: 50.h,),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0
                    ),
                    backgroundColor: AppColors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      side: BorderSide(color: AppColors.blue, width: 1.5.w
                    ),
                  ),),
                  onPressed:onBack,
                  child: Text("Back",
                      style: Styles.style16.copyWith(
                    color: AppColors.blue
                  )),
                ),
              ),
              SizedBox(width: 16.w,),
              Expanded(
                child: ElevatedButton(


                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    padding: EdgeInsets.symmetric(
                        vertical: 12.0
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      side: BorderSide(color: AppColors.blue, width: 1.5.w
                      ),
                    ),),
                  onPressed:onNext,
                  child: Text("Next",style: Styles.style16.copyWith(
                    color: AppColors.white
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
