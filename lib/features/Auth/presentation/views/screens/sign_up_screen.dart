import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/register_cubit/register_cubit.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/register_cubit/register_state.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/login_screen.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/theme/app_colors.dart' show AppColors;
import '../../../../../core/theme/styles.dart' show Styles;
import '../../../../../core/utils/app_dialog.dart';
import '../../../../../core/utils/validator.dart';
import '../widgets/custom_btn_widget.dart';
import '../widgets/custom_txt_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    var userName = TextEditingController();
    var fristName = TextEditingController();
    var lastName = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    var confrimPassword = TextEditingController();
    var phone = TextEditingController();
    return BlocProvider(
      create: (context) => getIt.get<RegisterCubit>(),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon:
                      Icon(Icons.arrow_back_ios_new_rounded,
                        color: AppColors.black,)),
                      SizedBox(width: 12.w,),
                      Text("Register", style: Styles.style20,)
                    ],
                  ),
                  SizedBox(height: 25.h,),
                  CustomTxtFieldWidget(hintTxt: "Enter you user name",
                      label: "User Name",
                      controller: userName,
                      validator: Validator.validateUsername),
                  SizedBox(height: 25.h,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTxtFieldWidget(hintTxt:
                        "Enter you Frist Name ",
                            label: "Frist Name",
                            controller: fristName,
                            validator: Validator.validateUsername),
                      ),
                      SizedBox(width: 16.w,),
                      Expanded(
                        child: CustomTxtFieldWidget(hintTxt:
                        "Enter you Last Name ",
                            label: "Last Name",
                            controller: lastName,
                            validator: Validator.validateUsername),
                      ),
                    ],
                  ),

                  SizedBox(height: 25.h,),

                  CustomTxtFieldWidget(hintTxt: "Enter you e-mail",
                      label: "E-mail",
                      controller: email,
                      validator: Validator.validateEmail),
                  SizedBox(height: 25.h,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTxtFieldWidget(hintTxt:
                        "Enter you Password ",
                            label: "Password",
                            controller: password,
                            validator: Validator.validatePassword),
                      ),
                      SizedBox(width: 16.w,),
                      Expanded(
                        child: CustomTxtFieldWidget(hintTxt:
                        "Confrim Password ",
                            label: "Confrim Password",
                            controller: confrimPassword,
                            validator: (text) =>
                                Validator.
                                validateConfirmPassword(text,
                                    password.text)),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h,),
                  CustomTxtFieldWidget(hintTxt: "Enter your Phone Number",
                      label: "Phone Number",
                      controller: phone,
                      validator: Validator.validatePhoneNumber),
                  SizedBox(height: 32.h,),
                  BlocConsumer<RegisterCubit, RegisterState>(
                    listener: (context, state) {
                      if (state is RegisterLoading) {
                        AppDialog.showDialogLoading(context);
                      }
                      else if (state is RegisterSuccess) {
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context) => LoginScreen()));
                      }
                      else if (state is RegisterError) {
                        Navigator.of(context).pop();
                        AppDialog.showDialogError(context, state.error);
                      }
                    },
                    builder: (context, state) {
                      return CustomBtnWidget(txt: "Register", onPressed: () {
                        if (formkey.currentState!.validate()) {
                          context.read<RegisterCubit>().register(
                              RegisterRequest(
                                  username: userName.text,
                                  firstName: fristName.text,
                                  lastName: lastName.text,
                                  rePassword: confrimPassword.text,
                                  password: password.text,
                                  phone: phone.text,
                                  email: email.text
                              ));
                        }
                      },);
                    },
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account",
                        style: Styles.style16,),
                      SizedBox(width: 5.w,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.login);
                        },
                        child: Text("Login",
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