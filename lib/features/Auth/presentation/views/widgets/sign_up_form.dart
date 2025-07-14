import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/utils/validator.dart';
import 'package:online_exam_app/features/Auth/presentation/signUp_cubit/signup_cubit.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/have_account_text.dart';
import 'package:online_exam_app/generated/l10n.dart';
import 'package:online_exam_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: S.of(context).UserName,
            hint: S.of(context).EnterUserName,
            controller: cubit.usernameController,
            validator: Validator.validateUsername,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            onChanged: (_) => cubit.onFieldChanged(),
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  label: S.of(context).FirstName,
                  hint: S.of(context).EnterFirstName,
                  controller: cubit.firstNameController,
                  validator: Validator.validateFullName,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onChanged: (_) => cubit.onFieldChanged(),
                ),
              ),
              SizedBox(width: 17.w),
              Expanded(
                child: CustomTextFormField(
                  label: S.of(context).LastName,
                  hint: S.of(context).EnterLastName,
                  controller: cubit.lastNameController,
                  validator: Validator.validateFullName,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onChanged: (_) => cubit.onFieldChanged(),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(
            label: S.of(context).Email,
            hint: S.of(context).EnterYourEmail,
            controller: cubit.emailController,
            validator: Validator.validateEmail,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onChanged: (_) => cubit.onFieldChanged(),
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  label: S.of(context).Password,
                  hint: S.of(context).EnterPassword,
                  controller: cubit.passwordController,
                  validator: Validator.validatePassword,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  onChanged: (_) => cubit.onFieldChanged(),
                  obscureText: true,
                ),
              ),
              SizedBox(width: 17.w),
              Expanded(
                child: CustomTextFormField(
                  label: S.of(context).ConfirmPassword,
                  hint: S.of(context).ConfirmPassword,
                  controller: cubit.confirmPasswordController,
                  validator: (val) => Validator.validateConfirmPassword(
                    val,
                    cubit.passwordController.text,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  onChanged: (_) => cubit.onFieldChanged(),
                  obscureText: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(
            label: S.of(context).PhoneNumber,
            hint: S.of(context).EnterPhoneNumber,
            controller: cubit.phoneController,
            validator: Validator.validatePhoneNumber,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            onChanged: (_) => cubit.onFieldChanged(),
          ),
          SizedBox(height: 48.h),

          BlocBuilder<SignupCubit, SignupState>(
            builder: (context, state) {
              final isValid = cubit.isFormValid;
              final isLoading = state is SignupLoading;

              return CustomButton(
                text: S.of(context).SignUp,
                isEnabled: isValid,
                isLoading: isLoading,
                color: isValid ? AppColors.blue[0]! : AppColors.gray,
                onPressed: () {
                  cubit.submit();
                },
              );
            },
          ),

          SizedBox(height: 16.h),
          HaveAccountText(
            question: S.of(context).AlreadyHaveAnAccount,
            actionText: S.of(context).Login,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
