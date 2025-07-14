import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/text_styles.dart';
import 'package:online_exam_app/features/Auth/presentation/signUp_cubit/signup_cubit.dart';
import 'package:online_exam_app/features/Auth/presentation/views/widgets/sign_up_form.dart';
import 'package:online_exam_app/generated/l10n.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).SignUp, style: AppTextStyles.appBarTitle),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20.sp, color: AppColors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: BlocListener<SignupCubit, SignupState>(
              listener: (context, state) {
                if (state is SignupSuccess) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('Success'),
                      content: const Text('Account created successfully'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                } else if (state is SignupFailure) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('Error'),
                      content: Text(state.errMessage),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const SignUpForm(),
            ),
          ),
        ),
      ),
    );
  }
}
