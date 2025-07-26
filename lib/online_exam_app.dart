import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/routing/app_routes.dart';
import 'package:online_exam_app/core/routing/app_routing.dart';
import 'package:online_exam_app/core/theme/app_theme.dart';
import 'package:online_exam_app/generated/l10n.dart';

class OnlineExamApp extends StatelessWidget {
  const OnlineExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp(
        locale: const Locale('en'),
        debugShowCheckedModeBanner: false,
        title: 'Online Exam App',
        theme: AppTheme.lightTheme,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: AppRoutes.explore,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
     supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
