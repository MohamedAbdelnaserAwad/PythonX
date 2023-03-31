import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pythonx_task/screens/driver/driver_home.dart';
import 'package:pythonx_task/screens/driver/order_details.dart';
import 'package:pythonx_task/screens/driver/order_statues.dart';
import 'package:pythonx_task/screens/onboarding_screen.dart';
import 'package:pythonx_task/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false ,
          theme: mainTheme,
          home: const OrderStatuesDriver(),
        );
      },
    );
  }
}


