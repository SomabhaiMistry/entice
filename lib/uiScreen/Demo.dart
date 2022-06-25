import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              img_bg_blur,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 60,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.r),
                        topRight: Radius.circular(10.r)),
                    border: Border.all(color: border_black_3C3429, width: 1.w)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      str_coin,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: sf_pro_display_semibold),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, 0, -15),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(box_green),
                          Image.asset(img_plus),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 55,
              right: 105,
              child: Image.asset(
                img_wallet,
                width: 35.w,
                height: 35.h,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 25),
                          child: SvgPicture.asset(
                            game_mode_bg,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 95),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                btn_easy,
                                height: 90.h,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              btn_normal,
                              height: 90.h,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              btn_hard,
                              height: 90.h,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                    margin: EdgeInsets.only(top: 20.h),
                                    child: SvgPicture.asset(b_y))),
                            SizedBox(
                              width: 3.w,
                            ),
                            Image.asset(
                              icon_ludo_title,
                              width: 160.w,
                              height: 70.h,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 20.h),
                                child: SvgPicture.asset(icon_question_mark)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
