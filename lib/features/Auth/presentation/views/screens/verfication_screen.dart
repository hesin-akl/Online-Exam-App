import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/features/Auth/data/models/request/forget_password_request.dart';
import 'package:online_exam_app/features/Auth/data/models/request/verfiy_password_request.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_cubit.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_state.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/reset_password.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/utils/app_dialog.dart';


//#DFE7F7
class VerficationPasswordScreen extends StatelessWidget {
  const VerficationPasswordScreen({super.key});

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
                  Text("verficationPassword", textAlign: TextAlign.center,
                    style: Styles.style18,),
                  SizedBox(height: 16.h,),
                  Text(
                    "Please enter your code that send to\n your email address ",
                    textAlign: TextAlign.center,
                    style: Styles.style16.copyWith(
                        color: AppColors.gray
                    ),),
                  //
                  SizedBox(height: 30.h,),
                  BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
                    listener: (context, state) {
                      if(state is verfiyPasswordLoading){
                        AppDialog.showDialogLoading(context);
                      }
                      else if (state is verfiyPasswordSuccess){
                        Navigator.of(context).pop();


                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>ResetPassword()));

                      }
                      else if (state is verfiyPasswordError){
                        Navigator.of(context).pop();
                        AppDialog.showDialogError(context, state.error);
                      }

                    },
                    builder: (context, state) {
                      return OtpTextField(
                        numberOfFields: 6,
                        borderColor: AppColors.darkWhite,
                        fillColor: AppColors.darkWhite,
                        filled: true,
                        fieldHeight: 100.h,
                        borderRadius: BorderRadius.circular(10.r),
                        fieldWidth: 50.w,
                        enabledBorderColor: AppColors.darkWhite,
                        disabledBorderColor: AppColors.darkWhite,
                        focusedBorderColor: AppColors.darkWhite,
                        showFieldAsBox: true,
                        onCodeChanged: (String code) {



                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          context.read<ForgetPasswordCubit>().verfiyPassword(VerfiyPasswordRequest(
                              resetCode: verificationCode
                          ));
                          showDialog(
                              context: context,

                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content: Text(
                                      'Code entered is $verificationCode'),
                                );
                              }
                          );

                        }, // end onSubmit
                      );
                    },
                  ),

                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't receive code? ",
                        style: Styles.style16,),
                      SizedBox(width: 5.w,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).
                          pushNamed(AppRoutes.forgetPassword,
                          );
                        },
                        child: Text("Resend",
                          style: Styles.style16.copyWith(
                              decoration: TextDecoration.underline,
                              color: AppColors.blue,
                              decorationColor: AppColors.blue
                          ),),
                      ),
                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
