import 'package:entice/SpinWheel/ReferAndEarn.dart';
import 'package:entice/SpinWheel/SimplePage1.dart';
import 'package:entice/four_in_a_row/Popup1.dart';
import 'package:entice/four_in_a_row/Popup2.dart';
import 'package:entice/uiScreen/ButtonDemo.dart';
import 'package:entice/uiScreen/Demo.dart';
import 'package:entice/uiScreen/ListScreen.dart';
import 'package:entice/uiScreen/Test1.dart';
import 'package:entice/uiScreen/Testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'four_in_a_row/Page1.dart';
import 'four_in_a_row/Popup3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SimplePage1(),
        );
      },
    );
  }
}

