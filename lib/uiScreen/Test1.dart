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
              CarouselSlider(
                items: [
                  SwapFile(),
                  SwapFile(),
                  SwapFile(),
                  SwapFile(),
                  SwapFile(),
                  SwapFile(),
                  SwapFile(),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 375.h,
                  aspectRatio: 16/9,
                  viewportFraction: 0.9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
