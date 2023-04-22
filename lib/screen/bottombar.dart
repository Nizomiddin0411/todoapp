import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/const/appcolor.dart';
import 'package:todoapp/screen/TaskPage.dart';
import 'package:todoapp/screen/homepage.dart';

class BottomNavigationBarApp extends StatelessWidget {
  final int bottomNavigationBarIndex;
  final BuildContext context;

  const BottomNavigationBarApp(this.context, this.bottomNavigationBarIndex);

  void onTabTapped(int index) {
    Navigator.of(context).push(
      MaterialPageRoute<Null>(builder: (BuildContext context) {
        return (index == 1) ? TaskPage() : HomePage();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavigationBarIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      selectedLabelStyle: TextStyle(color: AppColors.BlueDark),
      selectedItemColor: AppColors.BlueDark,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/home.png',
              color: (bottomNavigationBarIndex == 0)
                  ? AppColors.BlueDark
                  : AppColors.TextGrey,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/task.png',
              color: (bottomNavigationBarIndex == 1)
                  ? AppColors.BlueDark
                  : AppColors.TextGrey,
            ),
          ),
          label: 'Task',
        ),
      ],
      onTap: onTabTapped,
    );
  }
}