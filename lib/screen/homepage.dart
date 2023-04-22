import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:todoapp/const/appcolor.dart';
import 'package:todoapp/screen/floatActionbutton.dart';

import 'AppBar.dart';
import 'bottombar.dart';

class HomePage extends StatefulWidget {
  static const String routeName ='/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool check = false;
  int currentTab = 0;
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:header(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.GreyBackground,
                          border: Border(
                            left: BorderSide(color: Colors.yellow, width: 5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text('Today'),
                            ListTile(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(),
                                    borderRadius: BorderRadius.circular(1)),
                                leading: Checkbox(
                                  activeColor: Colors.green,
                                  checkColor: Colors.white,
                                  value: check,
                                  shape: CircleBorder(),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check = value!;
                                    });
                                  },
                                ),
                                title: Row(
                                  children: [
                                    Text('07.00 AM ',style: TextStyle(fontSize: 15),),
                                    SizedBox(width: 5,),
                                    Text("Yangi imkon "
                                        " ",style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                                trailing: Container(
                                  width: 50,
                                  height: 30,
                                  child: Row(
                                    children: [

                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_alert_sharp,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      secondaryActions: <Widget>[
                        CircleAvatar(
                            backgroundColor: AppColors.BellGrey,
                            radius: 30,
                            child: Icon(Icons.edit_rounded)),
                        CircleAvatar(
                          backgroundColor: AppColors.YellowAccent,
                          radius: 30,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Image.asset('assets/images/trash.png'),
                            color: Colors.red,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: customFab(context),
    bottomNavigationBar:
    BottomNavigationBarApp(context, bottomNavigationBarIndex));


}}
