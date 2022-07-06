import 'package:carousel_slider/carousel_slider.dart';
import 'package:entice/SpinWheel/CommonText.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/uiScreen/SwapFile.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_icon_images.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: white_ffffff,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [




            ],
          ),
        ),
      ),
    );
  }
}
