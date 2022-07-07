import 'package:carousel_slider/carousel_slider.dart';
import 'package:entice/SelfTesting/CommonMainFile.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/uiScreen/RewardSwapPage1.dart';
import 'package:entice/uiScreen/RewardSwapPage2.dart';
import 'package:entice/uiScreen/RewardSwapPage3.dart';
import 'package:entice/uiScreen/SwapFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilites/Constant.dart';

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
          backgroundColor: blue_0f5c91,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                    height: 295.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: yellow_F7CB46,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.5,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: orange_FF9353,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(75),
                                  bottomRight: Radius.circular(75),
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.5,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.w, top: 15.h),
                              child: Text(
                                "Add Friends",
                                style: TextStyle(
                                    color: white_ffffff,
                                    fontSize: 16.sp,
                                    fontFamily: sf_pro_display_semibold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.3.h,
                        ),
                        CarouselSlider(
                          items: [
                            RewardSwapPage1(),
                            RewardSwapPage2(),
                            RewardSwapPage3(),
                          ],
                          //Slider Container properties
                          options: CarouselOptions(
                            height: 200.h,
                            // aspectRatio: 16 / 9,
                            viewportFraction: 0.80,
                            initialPage: 0,
                            reverse: false,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),


              ChewyRegular("APp Name", 15, blue_2FA1C7)
            ],
          ),
        ),
      ),
    );
  }
}
