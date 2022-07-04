import 'package:dotted_line/dotted_line.dart';
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

  bool first = false;
  bool secound = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
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
                          margin: EdgeInsets.only(top: 30.h,left: 23.w,right: 23.w),
                          child:
                          Stack(
                            children: [
                              Image.asset(
                                img_rules_bg,
                                height: 300.h,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              SvgPicture.asset(bg,width: double.infinity,)
                            ],
                          )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50,right: 50,top: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset(icon_vibration),
                                SizedBox(width: 6.w,),
                                Expanded(
                                  child: Text("Music",style: TextStyle(
                                    color: brown_drak_532102,fontFamily: chewy_regular,
                                    fontSize: 27.sp
                                  ),),
                                ),
                                SvgPicture.asset(icon_vibration),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50,right: 50,top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset(icon_vibration),
                                SizedBox(width: 6.w,),
                                Expanded(
                                  child: Text("Sound",style: TextStyle(
                                    color: brown_drak_532102,fontFamily: chewy_regular,
                                    fontSize: 27.sp
                                  ),),
                                ),
                                SvgPicture.asset(icon_vibration),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50,right: 50,top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset(icon_vibration),
                                SizedBox(width: 6.w,),
                                Expanded(
                                  child: Text("Vibration",style: TextStyle(
                                    color: brown_drak_532102,fontFamily: chewy_regular,
                                    fontSize: 27.sp
                                  ),),
                                ),
                                SvgPicture.asset(icon_vibration),

                              ],
                            ),
                          ),
                        ],
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
                              img_title_setting,
                              width: 160.w,
                              height: 70.h,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 20.h),
                                child: SvgPicture.asset(icon_cross)),
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
