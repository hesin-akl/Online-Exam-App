import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/features/Auth/presentation/views/screens/profile_screen.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/results_screen.dart';
import 'package:online_exam_app/features/exam/presentation/view/screens/subject_screen.dart';

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
BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),
      label: 'Explore',),
      BottomNavigationBarItem(icon: Icon(Icons.edit_calendar_rounded),
      label: 'Result'),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),
      label: 'Profile'),

]),
    );
  }
}
