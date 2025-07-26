import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/routing/app_routes.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/styles.dart';
import 'package:online_exam_app/core/utils/app_dialog.dart';
import 'package:online_exam_app/core/utils/validator.dart';
import 'package:online_exam_app/features/Auth/data/models/request/login_request.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_btn_widget.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_txt_field_widget.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/forget_password_widget.dart';
import 'package:online_exam_app/features/exam/presentation/exam_screen.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/explore_screen.dart';
import '../../../../../core/di/di.dart';
import '../../controller/login_cubit/login_cubit.dart';
import '../../controller/login_cubit/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    bool status = false;
    return BlocProvider(
      create: (context) =>
          getIt.get<LoginCubit>(), //here is error
      child: Scaffold(
        body: SafeArea(
          child:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon:
                      Icon(Icons.arrow_back_ios_new_rounded,
                        color: AppColors.black,)),
                      SizedBox(width: 12.w,),
                      Text("Login", style: Styles.style20,)
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  CustomTxtFieldWidget(hintTxt: "Enter you email",
                      label: "Email",
                      controller: emailController,
                      validator: Validator.validateEmail),
                  SizedBox(height: 20.h,),
                  CustomTxtFieldWidget(hintTxt:
                  "Enter you password ",
                      label: "Password",
                      controller: passwordController,
                      validator: Validator.validatePassword),
                  SizedBox(height: 20.h,),
                  ForgetPasswordWidget(),
                  SizedBox(height: 30.h,),
                  BlocConsumer<LoginCubit, LoginStates>(
                    listener: (context, state) {
                    if(state is LoginLoading){
AppDialog.showDialogLoading(context);
                    }
                    else if (state is LoginSuccess){
Navigator.of(context).pop();
Navigator.push(context, MaterialPageRoute(builder:
    (context)=>ExploreScreen()));

                    }
                    else if (state is LoginError){
                      Navigator.of(context).pop();
                      AppDialog.showDialogError(context, state.error);
                    }
                    },
                    builder: (context, state) {
                      return CustomBtnWidget(txt: "Login", onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<LoginCubit>()
                              .login(LoginRequest(
                              email: emailController.text,
                              password: passwordController.text
                          ));
                        }
                      },);
                    },
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                        style: Styles.style16,),
                      SizedBox(width: 5.w,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.signUp);
                        },
                        child: Text("Sign Up",
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
