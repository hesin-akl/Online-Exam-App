import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_btn_widget.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/exam_screen.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles.dart' show Styles;

class StartExam extends StatelessWidget {
   StartExam({super.key, this.examEntity, this.image});
  final List<String> instructions = const [
    "Lorem ipsum dolor sit amet consectetur.",
    "Lorem ipsum dolor sit amet consectetur.",
    "Lorem ipsum dolor sit amet consectetur.",
    "Lorem ipsum dolor sit amet consectetur.",
  ];
   String? image;
ExamEntity? examEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.
        arrow_back_ios_new_rounded, color: AppColors.black,)),
        title: Text(examEntity!.title!, style: Styles.style20,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

         Container(
           padding: EdgeInsets.symmetric(horizontal: 20.0),
           child: Column(

             children: [
               SizedBox(height: 16.h,),
               Row(
                 children: [
                   Image.network(image!,
                     fit: BoxFit.cover,
                     width: 42.w,height: 47.h,),
                   SizedBox(width: 16.w,),
                   Text(examEntity!.title!,style: Styles.style20.copyWith(
                       fontWeight: FontWeight.w600
                   ),),
                   Spacer(),
                   Text("${examEntity!.duration} Minutes",style: Styles.style13.copyWith(
                       color: AppColors.blue
                   ),),


                 ],
               ),
               Row(
                 children: [

                   Text("High Level",style: Styles.style18.copyWith(
                       fontWeight: FontWeight.w600
                   ),),
                   Container(
                     margin: EdgeInsets.all(16.0),
                     width: 2.5.w,height:24.h ,
                     color: AppColors.blue[5],
                   ),
                   Text("${examEntity!.numberOfQuestions} Question",style: Styles.style16.copyWith(
                       color: AppColors.gray
                   ),),


                 ],
               ),
             ],
           ),
         ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16.h
            ),
            width: MediaQuery.of(context).size.width,
height: 1.h,color: AppColors.blue[5],
          ),
          SizedBox(height: 10.h,),
          Text("  Instructions", style: Styles.style20,),
          SizedBox(height: 10.h,),
          ...instructions.map((text) => Padding(
            padding: const EdgeInsets.
            symmetric(vertical: 4.0,horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("• ", style:Styles.style16),
                Expanded(child: Text(text, style: Styles.style16),)
              ],
            ),
          )),
          SizedBox(height: 30.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomBtnWidget(txt: "Start",onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>
                      ExamScreen(
                        examEntity: examEntity,
                      )));
            },),
          )
        ],
      ),
    );
  }
}
