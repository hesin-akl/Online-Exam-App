import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/styles.dart';

class ForgetPasswordWidget extends StatefulWidget {
   ForgetPasswordWidget({super.key});


  @override
  State<ForgetPasswordWidget> createState() => _ForgetPasswordWidgetState();
}

class _ForgetPasswordWidgetState extends State<ForgetPasswordWidget> {

  bool status=false;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Checkbox(
            activeColor: AppColors.blue,
            visualDensity: VisualDensity.compact,
            value: status,

            onChanged: (value){
              status=value!;
              setState(() {

              });

            }),
        SizedBox(width: 10.w,),
        Text("Remember me",style: Styles.style13,),
        Spacer(),
        InkWell(
          onTap: (){
            Navigator.of(context).pushNamed
              (AppRoutes.forgetPassword);
          },
          child: Text("Forget Password",
            style: Styles.style13.copyWith(
                decoration: TextDecoration.
                underline,
             decorationColor: AppColors.black
            ),),
        ),

      ],
    );
  }
}
