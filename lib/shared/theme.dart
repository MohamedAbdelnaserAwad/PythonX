import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonx_task/shared/colors.dart';

ThemeData mainTheme = ThemeData(
  primarySwatch: mainColor,
  fontFamily: 'Poppins' ,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    )
  )
);