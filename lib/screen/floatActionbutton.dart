import 'package:flutter/material.dart';
import 'package:todoapp/const/appcolor.dart';

import 'modalbottomsheet.dart';

FloatingActionButton customFab(context) {
  AddTaskbottomsheet modal = AddTaskbottomsheet();

  return FloatingActionButton(
    onPressed: () {
      modal.mainBottomSheet(context);
    },
    elevation: 5,
    backgroundColor: Colors.transparent,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset('assets/images/fab-add.png'),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            AppColors.PurpleLight,
            AppColors.PurpleDark,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.PurpleShadow,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
    ),
  );
}