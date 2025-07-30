import 'package:flutter/material.dart';
import 'package:online_exam_app/core/di/di.dart';
import 'package:online_exam_app/online_exam_app.dart';

import 'core/utils/app_constants.dart';
import 'core/utils/shared_prefrence.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await SharedPreferencesUtils.init();
 // AppConstants.userToken = await SharedPreferencesUtils.getData(key: AppConstants.token);

  await configureDependencies();
  runApp( OnlineExamApp());
}

