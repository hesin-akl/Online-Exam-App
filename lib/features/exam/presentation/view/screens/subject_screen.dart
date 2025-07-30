import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/core/routing/app_routes.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/core/utils/app_constants.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_txt_field_widget.dart';
import 'package:online_exam_app/features/exam/presentation/controller/exam_cubit/explore_cubit.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/exam_based_on_subject.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/start_exam.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/subject_item.dart'
    show SubjectItem;

import '../../../domain/entity/subject_entity.dart';

class SubjectScreen extends StatefulWidget {
   SubjectScreen({super.key});

   @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return BlocProvider(
      create: (context) {
        final cubit = getIt.get<ExploreCubit>();
        final token = AppConstants.userToken;

        if (token != null && token.isNotEmpty) {
          cubit.getAllSubjects(token);
        } else {
          cubit.getAllSubjects(
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NzNmMDRkNTU1NGIzMjg5MTJlNTYyYyIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzUzNTIzMzY1fQ.2uycAuNcOFY0IHB5eFuoKUuGEM9j3IP2foAocYsqBAA");
        }

        return cubit;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 24.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h,),
            Text("Survey", style: Styles.style20.copyWith(
                color: AppColors.blue
            ),),
            SizedBox(height: 24.h,),
            CustomTxtFieldWidget(hintTxt: "Search ...",
              isSearch: true,
              onChanged: (value) {},
              controller: searchController,
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return "Search must be not empty";
                } else {
                  return null;
                }
              },
              label: 'Search',
            ),
            SizedBox(height: 16.h,),
            Text("Browse by subject", style: Styles.style18,),
            SizedBox(height: 16.h,),
            BlocBuilder<ExploreCubit, ExploreState>(
              builder: (context, state) {
                if(state.isLoadingSubject==true){
                  return      Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height:MediaQuery.of(context).size.height*0.25),
                        LoadingAnimationWidget.inkDrop(color: AppColors.blue,
                            size: 50.sp),
                      ],
                    ),
                  );
                }
                if(state.errorMessageSubjects!=null){
                  return    Text('${state.errorMessageSubjects}');
                }
                return Expanded(
                  child: ListView.separated(itemBuilder:
                      (context, index) {
                    return InkWell(
                      onTap: (){
         Navigator.of(context).push(MaterialPageRoute
           (builder: (context)=>ExamBasedOnSubject(subject: state.subjects[index],))) ;
                      },
                      child: SubjectItem(

                                         subjectEntity: state.subjects[index],
                      ),
                    );
                  },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 14.h,);
                      }, itemCount: state.subjects.length),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
