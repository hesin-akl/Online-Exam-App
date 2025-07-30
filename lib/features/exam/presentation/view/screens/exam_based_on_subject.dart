import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart' show LoadingAnimationWidget;
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
import 'package:online_exam_app/features/exam/presentation/controller/exam_cubit/explore_cubit.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/start_exam.dart' show StartExam;
import 'package:online_exam_app/features/exam/presentation/view/widgets/exam_subject_item.dart';

class ExamBasedOnSubject extends StatelessWidget {
   ExamBasedOnSubject({super.key,this.subject});
    SubjectEntity? subject;
  @override
  Widget build(BuildContext context) {
    //SubjectEntity arg=ModalRoute.of(context)!.settings!.arguments as SubjectEntity;
    return BlocProvider(
      create: (context) => getIt.get<ExploreCubit>()..
      examOnSubjects(subject!.id.toString(), "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NzNmMDRkNTU1NGIzMjg5MTJlNTYyYyIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzUzMjg1NzE3fQ.-XojQwq0cniVnX6uvpM6EVReul7zTEZOyuSqACKZSiU"),
      child: BlocBuilder<ExploreCubit, ExploreState>(
        builder: (context, state) {
          if(state.isLoadingexamOnSubjects==true){
            return    Scaffold(
              body:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    LoadingAnimationWidget.inkDrop(color: AppColors.blue,
                        size: 50.sp),
                  ],
                ),
              )
            );


          }
          if(state.errorMessageSubjects!=null){
            return    Scaffold(
              body: Text('${state.errorMessageSubjects}')
            );
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, icon: Icon(Icons.
              arrow_back_ios_new_rounded, color: AppColors.black,)),
              title: Text("${subject!.name}", style: Styles.style20,),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 16.h,),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return StartExam(
                            image:subject!.image! ,
                            examEntity:state.exams[index] ,
                          );
                        }));
                      },
                      child: ExamSubjectItem(examEntity: state.exams[index],
                          image: subject!.image!),
                    );
                  },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.h,);
                    }, itemCount: state.exams.length,)
                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
