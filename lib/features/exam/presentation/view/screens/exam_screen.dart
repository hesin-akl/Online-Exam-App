import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/common/widgets/loading_animation_widget.dart';
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/presentation/controller/exam_cubit/explore_cubit.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/alert_time_dialog.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/question_item.dart';

import '../../../../../core/theme/styles.dart';

class ExamScreen extends StatefulWidget {
   ExamScreen({super.key,this.examEntity});
  ExamEntity? examEntity;
  @override
  State<ExamScreen> createState() => _ExamScreenState();
}
class _ExamScreenState extends State<ExamScreen> {
  int currentPage = 0;
  var controller = PageController();
@override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ExploreCubit>()
        ..questionsByExam(
         widget.examEntity!.id!,
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NzNmMDRkNTU1NGIzMjg5MTJlNTYyYyIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzUzNjU1NzU3fQ.kgqCfdi8S9d1xL2a9uRK6J01K7xfTIdwqvIPaKNIsJE",
        ),
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon:
            Icon(Icons.arrow_back_ios, color: Colors.black,)),
            title: Text('Exam ', style: Styles.style20,),
            actions: [
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        showDialog(context: context,
                            barrierDismissible: false,
                            builder: (context)=>AlertTimeDialog());
                      },
                      child: Image.asset("assets/images/timer.png")),
                  SizedBox(width: 10.w,),
                  Text("timer", style: Styles.style20.copyWith(
                      color: AppColors.green
                  ),),
                  SizedBox(width: 10.w,),
                ],
              ),
            ],
          ),
          body:BlocConsumer<ExploreCubit,ExploreState>(builder: (context,state){
            if(state.isLoadingQuestionByexam==true){
              return LoadingAnimationComponemt();
            }
            if(state.errorMessagequestions!=null){
              return Center(child:
          Text(state.errorMessagequestions.toString()));
            }
  return  PageView.builder(
                itemCount: state.questions.length,
                controller: controller,
                onPageChanged: (index) {
                  currentPage = index;
                  setState(() {

                  }); // Handle page change if needed
                },
                itemBuilder: (context, index) {
                  return QuestionItem(
                    questionEntity:state.questions[index],
                    onBack: () {
                      controller.previousPage
                        (duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }, onNext: () {
                    controller.nextPage(duration:

                    Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },);
                });
          },
              listener: (context,state){

              })



      ),
    );
  }
}
