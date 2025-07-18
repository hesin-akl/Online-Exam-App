import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/routing/app_routes.dart';
import 'package:online_exam_app/core/utils/app_dialog.dart';
import 'package:online_exam_app/features/Auth/data/models/request/forget_password_request.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_cubit.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_state.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/verfication_screen.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/utils/validator.dart' show Validator;
import '../widgets/custom_btn_widget.dart';
import '../widgets/custom_txt_field_widget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => getIt.get<ForgetPasswordCubit>(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon:
                      const Icon(Icons.arrow_back_ios_new_rounded, color:
                      AppColors.black,)),
                      SizedBox(width: 12.w,),
                      Text("Password ", style: Styles.style20,)
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  Text("Forget password ", textAlign: TextAlign.center,
                    style: Styles.style18,),
                  SizedBox(height: 16.h,),
                  Text(
                    "Please enter your email associated to \nyour account ",
                    textAlign: TextAlign.center,
                    style: Styles.style16.copyWith(
                        color: AppColors.gray
                    ),),
                  //
                  SizedBox(height: 20.h,),
                  CustomTxtFieldWidget(hintTxt: "Enter you email",
                      label: "Email",
                      controller: emailController,
                      validator: Validator.validateEmail),


                  SizedBox(height: 30.h,),
                  BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
                    listener: (context, state) {
                  if(state is ForgetPasswordLoading){
    AppDialog.showDialogLoading(context);
                  }else if(state is ForgetPasswordSuccess){
                    Navigator.of(context).pushNamed(AppRoutes.verficationPassword,

                    );

                  }
                    else if(state is ForgetPasswordError){
                      Navigator.of(context).pop();
                    AppDialog.showDialogError(context, state.error);
                  }
                    },
                    //mariammohmed257@gmail.com
                    builder: (context, state) {
                      return CustomBtnWidget(txt: "Continue", onPressed: () {
                        if (formKey.currentState!.validate()) {
context.read<ForgetPasswordCubit>().
forgetPassword
  (ForgetPasswordRequest(email: emailController.text));

                        }
                      }
                        ,);
                    },
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
