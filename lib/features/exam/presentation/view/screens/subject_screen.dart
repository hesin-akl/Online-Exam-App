import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_txt_field_widget.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/subject_item.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController=TextEditingController();
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 24.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h,),
      Text("Survey",style: Styles.style20.copyWith(
        color: AppColors.blue
      ),),
          SizedBox(height: 24.h,),
          CustomTxtFieldWidget(hintTxt: "Search",
              isSearch: true,
               controller: searchController,
              validator: (value){
            if(value!.isEmpty||value==null){
              return "Search must be not empty";
            }else{
              return null;
            }
              }),
          SizedBox(height: 16.h,),
          Text("Browse by subject",style: Styles.style18,),
          SizedBox(height: 16.h,),
          Expanded(
            child: ListView.separated(itemBuilder: (context,index){
              return SubjectItem();
            },
                separatorBuilder: (context,index){
                  return SizedBox(height: 10.h,);
                }, itemCount: 10),
          )
        ],
      ),
    );
  }
}
