import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/core/routing/app_routes.dart';
import 'package:online_exam_app/core/utils/app_dialog.dart';
import 'package:online_exam_app/features/Auth/data/models/request/reset_password_request.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_cubit.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_state.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/utils/validator.dart' show Validator;
import '../widgets/custom_btn_widget.dart';
import '../widgets/custom_txt_field_widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var emaildController = TextEditingController();
    var passwordController = TextEditingController();
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
                      Text("Password ",
                        style: Styles.style20,)
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  Text("ResetPassword", textAlign: TextAlign.center,
                    style: Styles.style18,),
                  SizedBox(height: 16.h,),
                  Text(
                    "Password must not be empty and must contain 6 characters with upper case letter and one  number at least ",
                    textAlign: TextAlign.center,
                    style: Styles.style16.copyWith(
                        color: AppColors.gray
                    ),),
                  //
                  SizedBox(height: 20.h,),
                  CustomTxtFieldWidget(hintTxt:
                  "Enter you E-mail",
                      label: "E-mail",
                      controller: emaildController,
                      validator: Validator.validateEmail),

                  SizedBox(height: 20.h,),
                  CustomTxtFieldWidget(hintTxt: "Enter you  Password",
                      label: " Password",
                      controller: passwordController,
                      validator: Validator.validatePassword),
                  SizedBox(height: 30.h,),
                  BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
                    listener: (context, state) {
                      if(state is ResetPasswordLoading){
                        AppDialog.showDialogLoading(context);
                      }
                      else if (state is ResetPasswordSuccess){
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed(
                            AppRoutes.login);

                      }
                      else if (state is ResetPasswordError){
                        Navigator.of(context).pop();
                        AppDialog.showDialogError(context, state.error);
                      }
                    },
                    builder: (context, state) {
                      return CustomBtnWidget(txt: "Continue", onPressed: () {
                        if (formKey.currentState!.validate()) {

context.read<ForgetPasswordCubit>().
resetPassword(ResetPasswordRequest(
  email:emaildController.text ,
    newPassword: passwordController.text
));

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
