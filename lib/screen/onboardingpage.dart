import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:todoapp/screen/TaskPage.dart';
import 'package:todoapp/screen/homepage.dart';

import '../const/appcolor.dart';
import 'addTask.dart';
import 'bottombar.dart';
import 'floatActionbutton.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentTab = 0;
  final bottomNavigationBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              width: 412.w,
              height: 190.h,
              color: AppColors.HeaderBlueLight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child:
                              Image.asset("assets/images/Ellipse 11 (1).png"),
                        ),
                        Container(
                          child:
                              Image.asset("assets/images/Ellipse 12 (1).png"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello Brenda!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text("Today you have 9 tasks",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Center(child: Image.asset('assets/images/Clipboard-empty.png')),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "No tasks",
              style: TextStyle(
                fontSize: 22.sp,
                color: AppColors.TextHeader,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 130.h,
            ),
          ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar:
      BottomNavigationBarApp(context, bottomNavigationBarIndex),);
  }
}
