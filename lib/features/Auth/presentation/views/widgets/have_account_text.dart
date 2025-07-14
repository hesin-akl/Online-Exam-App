import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/core/theme/text_styles.dart';

class HaveAccountText extends StatelessWidget {
  final String question;
  final String actionText;
  final VoidCallback onTap;

  const HaveAccountText({
    super.key,
    required this.question,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question, style: AppTextStyles.haveAccStyle),
        TextButton(
          onPressed: onTap,
          child: Text(
            actionText,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.blue[0]!,
            ),
          ),
        ),
      ],
    );
  }
}
