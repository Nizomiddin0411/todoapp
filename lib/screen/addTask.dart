import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/appcolor.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:   Column(
        children: [
          Container(
            child: Container(
              width: 412.w,
              height: 290.h,
              color: AppColors.YellowAccent,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Image.asset("assets/images/Ellipse 11.png"),
                            ),
                            Container(
                              child: Image.asset("assets/images/Ellipse 12.png"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                          child: Row(
                            children: [
                              Column(
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
                              SizedBox(
                                width: 140,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 130, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.YellowAccent,
                                borderRadius: BorderRadius.circular(5)),
                            width: 339,
                            height: 125,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Today Reminder",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.cancel,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  Text("Meeting with client",
                                      style: TextStyle(color: Colors.white)),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "13.00 PM",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Container(
                                          width: 52,
                                          height: 66,
                                          child: Image.asset(
                                              'assets/images/bell.png'))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
