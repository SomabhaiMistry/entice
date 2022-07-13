import 'dart:ui';

import 'package:entice/SelfTesting/CommonMainFile.dart';
import 'package:entice/style/my_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';

class LudoMainPage extends StatefulWidget {
  const LudoMainPage({Key? key}) : super(key: key);

  @override
  State<LudoMainPage> createState() => _LudoMainPageState();
}

class _LudoMainPageState extends State<LudoMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              img_ludo_bg,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12.w, right: 12.w, top: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(icon_cross),
                      Row(
                        children: [
                          SvgPicture.asset(
                            icon_question_mark_yellow,
                            width: 44,
                            height: 50,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SvgPicture.asset(
                            icon_setting,
                            width: 44,
                            height: 50,
                          )
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 12.w, right: 12.w, top: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: 8.h,
                                    width: 8.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Container(
                                    height: 8.h,
                                    width: 8.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: white_opacity_B3ffffff),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Container(
                                    height: 8.h,
                                    width: 8.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: white_opacity_B3ffffff),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            CircleAvatar(
                              backgroundColor: white_ffffff,
                              radius: 32,
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(img_india),
                                radius: 28,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(2.r),
                                  child: Image.asset(
                                    img_india,
                                    height: 14.h,
                                    width: 14.w,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                  width: 60,
                                  child: Text(
                                    str_vrunda_patel,
                                    overflow: TextOverflow.ellipsis,

                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: chewy_regular,
                                        color: white_ffffff),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(bottom: 7),
                        decoration: BoxDecoration(
                            color: brown_572F1B,
                            border: Border.all(width: 2.5, color: Colors.white),
                            borderRadius: BorderRadius.circular(11)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 0,top: 0,left: 0,right: 0),
                                  height: 23,
                                  width: 27,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(9),
                                        topLeft: Radius.circular(9),
                                      )),
                                ),
                                Image.asset(
                                  img_super,
                                  width: 12,
                                  height: 13,
                                )
                              ],
                            ),
                            Container(
                              width: 27,
                              height: 2.5,
                              color: Colors.white,
                            ),
                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFFFE74),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 17,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff96FF81),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 17,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff74deff),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 17,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff9474ff),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 20,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFF8181),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(bottom: 7),
                              decoration: BoxDecoration(
                                  color: brown_572F1B,
                                  border: Border.all(width: 2.5, color: Colors.white),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 0,top: 0,left: 0,right: 0),
                                        height: 23,
                                        width: 27,
                                        decoration: BoxDecoration(
                                            color: Color(0xff4e74fb),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(9),
                                              topLeft: Radius.circular(9),
                                            )),
                                      ),
                                      Image.asset(
                                        img_super,
                                        width: 12,
                                        height: 13,
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 27,
                                    height: 2.5,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFFFE74),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 17,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff96FF81),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 17,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff74deff),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 17,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff9474ff),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 20,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF8181),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                              decoration: BoxDecoration(
                                  color: Color(0xff4e74fb),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 2, color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          height: 8.h,
                                          width: 8.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Container(
                                          height: 8.h,
                                          width: 8.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white_opacity_B3ffffff),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Container(
                                          height: 8.h,
                                          width: 8.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white_opacity_B3ffffff),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: white_ffffff,
                                    radius: 32,
                                    child: CircleAvatar(
                                      backgroundImage: const AssetImage(img_india),
                                      radius: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(2.r),
                                        child: Image.asset(
                                          img_india,
                                          height: 14.h,
                                          width: 14.w,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        width: 60,
                                        child: Text(
                                          "12",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: chewy_regular,
                                              color: white_ffffff),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 12.w, right: 12.w, bottom:100.h),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                        decoration: BoxDecoration(
                            color: Color(0xffd85236),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: 8.h,
                                    width: 8.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Container(
                                    height: 8.h,
                                    width: 8.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: white_opacity_B3ffffff),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Container(
                                    height: 8.h,
                                    width: 8.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: white_opacity_B3ffffff),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            CircleAvatar(
                              backgroundColor: white_ffffff,
                              radius: 32,
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(img_india),
                                radius: 28,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(2.r),
                                  child: Image.asset(
                                    img_india,
                                    height: 14.h,
                                    width: 14.w,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                  width: 60,
                                  child: Text(
                                    str_vrunda_patel,
                                    overflow: TextOverflow.ellipsis,

                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: chewy_regular,
                                        color: white_ffffff),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(bottom: 7),
                        decoration: BoxDecoration(
                            color: brown_572F1B,
                            border: Border.all(width: 2.5, color: Colors.white),
                            borderRadius: BorderRadius.circular(11)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 0,top: 0,left: 0,right: 0),
                                  height: 23,
                                  width: 27,
                                  decoration: BoxDecoration(
                                      color: Color(0xffd85236),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(9),
                                        topLeft: Radius.circular(9),
                                      )),
                                ),
                                Image.asset(
                                  img_super,
                                  width: 12,
                                  height: 13,
                                )
                              ],
                            ),
                            Container(
                              width: 27,
                              height: 2.5,
                              color: Colors.white,
                            ),
                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFFFE74),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 17,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff96FF81),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 17,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff74deff),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 17,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff9474ff),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3.5),
                              width: 20,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(height: 4,),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFF8181),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(bottom: 7),
                              decoration: BoxDecoration(
                                  color: brown_572F1B,
                                  border: Border.all(width: 2.5, color: Colors.white),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 0,top: 0,left: 0,right: 0),
                                        height: 23,
                                        width: 27,
                                        decoration: BoxDecoration(
                                            color: Color(0xff6cbb3c),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(9),
                                              topLeft: Radius.circular(9),
                                            )),
                                      ),
                                      Image.asset(
                                        img_super,
                                        width: 12,
                                        height: 13,
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 27,
                                    height: 2.5,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFFFE74),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 17,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff96FF81),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 17,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff74deff),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 17,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff9474ff),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3.5),
                                    width: 20,
                                    height: 1,
                                    color: Colors.white,
                                  ),

                                  SizedBox(height: 4,),
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF8181),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                              decoration: BoxDecoration(
                                  color: Color(0xff6cbb3c),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 2, color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          height: 8.h,
                                          width: 8.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Container(
                                          height: 8.h,
                                          width: 8.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white_opacity_B3ffffff),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Container(
                                          height: 8.h,
                                          width: 8.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white_opacity_B3ffffff),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: white_ffffff,
                                    radius: 32,
                                    child: CircleAvatar(
                                      backgroundImage: const AssetImage(img_india),
                                      radius: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(2.r),
                                        child: Image.asset(
                                          img_india,
                                          height: 14.h,
                                          width: 14.w,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        width: 60,
                                        child: Text(
                                          str_vrunda_patel,
                                          overflow: TextOverflow.ellipsis,

                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: chewy_regular,
                                              color: white_ffffff),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 12.w, right: 12.w, top: 8.h, bottom: 6.h),
              height: 95,
              decoration: BoxDecoration(
                color: cream_F0E2C7,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(img_super),
                      Text(
                        "super\nPowers".toUpperCase(),
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp, color: brown_dark_54301d),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.r),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            colors: [brown1_9F715A, brown2_72442D],
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(img_super_yellow,width: 38,height: 38,),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Backward",
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_green,width: 38,height: 38,),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Star",
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_blue,width: 38,height: 38,),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Surgical Strike",
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_purpal,width: 38,height: 38,),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Kill",
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_red,width: 38,height: 38,),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Replace",
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
