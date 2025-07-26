import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/results_screen.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/subject_screen.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/selected_icon_item.dart';
import 'package:online_exam_app/features/exam/presentation/view/widgets/unselected_icon_item.dart';

import '../../../../profile/view/screens/profile_screen.dart';

class ExploreScreen extends StatefulWidget {
   ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}
class _ExploreScreenState extends State<ExploreScreen> {
  List<Widget>screens=[
    SubjectScreen(),
    ResultsScreen(),
    ProfileScreen()
  ];
  int currindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[currindex]),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: currindex,
    onTap: (index){
    currindex=index;
    setState(() {
    });
    },
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.blue[5],
    selectedItemColor: AppColors.blue,
    unselectedItemColor: AppColors.blue,

    items: [
BottomNavigationBarItem(icon:UnselectedIconItem(iconData: CupertinoIcons.home),
      activeIcon: SelectedIconItem(iconData: CupertinoIcons.home),
      
      label: 'Explore',),
      BottomNavigationBarItem(icon:UnselectedIconItem(iconData:
      Icons.edit_calendar),
          activeIcon: SelectedIconItem(iconData: Icons.edit_calendar),
      label: 'Result'),
  BottomNavigationBarItem(icon:UnselectedIconItem(iconData:
  CupertinoIcons.person),
      activeIcon: SelectedIconItem(iconData:CupertinoIcons.person),
      label: 'Profile'),

]),
    );
  }
}
