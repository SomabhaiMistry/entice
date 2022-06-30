import 'package:entice/style/my_color.dart';
import 'package:entice/style/my_string.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';

class Popup3 extends StatefulWidget {
  const Popup3({Key? key}) : super(key: key);

  @override
  State<Popup3> createState() => _Popup3State();
}

class _Popup3State extends State<Popup3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: pink_FE685D,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Center(child: SvgPicture.asset(bg_rect_add_friend)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          child: CircleAvatar(
                            backgroundColor: white_ffffff,
                            radius: 43.r,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage(img_india),
                              radius: 38.r,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(btn_green_bg),
                              Text(
                                "Level 2",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: chewy_regular,
                                    color: white_ffffff),
                              )
                            ],
                          ),
                        ),
                        Positioned(right: 2.5, child: Image.asset(img_cycle))
                      ],
                    ),


                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(2.r),
                          child: Image.asset(
                            img_india,
                            height: 20,
                            width: 20,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          str_rutvik,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: chewy_regular,
                              color: brown_4B3C04),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "Rushabh sent you friendship request!",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: chewy_regular,
                          color: brown_4B3C04),
                    ),
                    SizedBox(height: 13.h,),

                    Container(
                      margin: EdgeInsets.only(left: 60.w,right: 60.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Expanded(child: Image.asset(img_confirm)),
                          // SizedBox(width: 12.w,),
                          Expanded(child: Image.asset(img_delete)),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 35.w, right: 35.w, top: 40.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  img_india,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    img_star_purpal,
                                    width: 12.w,
                                    height: 12.h,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "712 point",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: chewy_regular,
                                        color: brown_4B3C04),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  img_india,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    img_star_purpal,
                                    width: 12.w,
                                    height: 12.h,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "712 point",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: chewy_regular,
                                        color: brown_4B3C04),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  img_india,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    img_star_purpal,
                                    width: 12.w,
                                    height: 12.h,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "718 point",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: chewy_regular,
                                        color: brown_4B3C04),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 45.h,),
            SvgPicture.asset(icon_cross)
          ],
        ),
      ),
    );
  }
}
