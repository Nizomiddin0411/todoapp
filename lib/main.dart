import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todoapp/screen/splashscreen.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
        builder:(context, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:  SplashScreen(),

          );
        }

    );
  }
}


