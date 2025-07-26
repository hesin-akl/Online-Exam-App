import 'package:flutter/material.dart';
import 'package:online_exam_app/core/routing/app_routes.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/forget_password.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/login_screen.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/sign_up_screen.dart';
import 'package:online_exam_app/features/exam/presentation/exam_screen.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/explore_screen.dart';

import '../../features/Auth/presentation/views/screens/reset_password.dart';
import '../../features/Auth/presentation/views/screens/verfication_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) =>
           LoginScreen(),
        );
        //ExploreScreen
      case AppRoutes.explore:
        return MaterialPageRoute(
          builder: (_) =>
              ExploreScreen(),
        );
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) =>
              ForgetPassword(),
        );

      case AppRoutes.verficationPassword:
        return MaterialPageRoute(
          builder: (_) =>
              VerficationPasswordScreen(),
        );
      case AppRoutes.resetPassword:
        return MaterialPageRoute(
          builder: (_) =>
              ResetPassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name ?? "Null"}',
              ),
            ),
          ),
        );
    }
  }
}

