import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/appcolor.dart';
import 'onboardingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(25.w, 119.h, 25.w, 142.h),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(child: Image.asset('assets/images/Clipboard.png')),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Reminders made simple",
              style: TextStyle(
                fontSize: 22.sp,
                color: AppColors.TextHeader,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 130.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.GreenLight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Container(
                width: 258.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.GreenLight
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
