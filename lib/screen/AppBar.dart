import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/const/appcolor.dart';


  PreferredSizeWidget header(){
    return  PreferredSize(
      preferredSize: Size.fromHeight(250),
      child: Column(children: [
        Container(
          width: 412.w,
          height: 290.h,
          color: AppColors.HeaderBlueLight,
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
                          child:
                          Image.asset("assets/images/Ellipse 11 (1).png"),
                        ),
                        Container(
                          child:
                          Image.asset("assets/images/Ellipse 12 (1).png"),
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

                            ],
                          ),
                          SizedBox(
                            width: 218,
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
                            color: AppColors.HeaderGreyLight,
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
                                          'assets/images/bell-left.png'))
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
      ]),
    );
  }

