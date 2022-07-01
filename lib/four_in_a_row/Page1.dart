import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/four_row_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 18.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(icon_cross),
                    Row(
                      children: [
                        SvgPicture.asset(icon_question_mark_yellow,width: 44,height: 50,),
                        SizedBox(
                          width: 10.w,
                        ),
                        SvgPicture.asset(icon_setting,width: 44,height: 50,)
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                  // height: 160,
                  // color: pista_439050,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: yellow_F7CB46),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: blue_0f5c91),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: blue_0f5c91),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),

                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [

                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                child: CircleAvatar(
                                  backgroundColor: yellow_F7CB46,
                                  radius: 35.r,
                                  child: CircleAvatar(
                                    backgroundImage: const AssetImage(img_india),
                                    radius: 29.8.r,
                                  ),
                                ),
                              ),
                              SvgPicture.asset(btn_power_yellow)
                            ],
                          ),

                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                              Text(
                                "Rushabh",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontFamily: chewy_regular,
                                    color: white_ffffff),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                img_star_purpal,width: 18.w,height: 18.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "718 point",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: sfpro_display_medium,
                                    color: white_ffffff),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(img_power),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "Super Power",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontFamily: sfpro_display_medium,
                                color: white_ffffff),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: yellow_F7CB46),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: blue_0f5c91),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: blue_0f5c91),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),

                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [

                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                child: CircleAvatar(
                                  backgroundColor: red_DD364A,
                                  radius: 35.r,
                                  child: CircleAvatar(
                                    backgroundImage: const AssetImage(img_india),
                                    radius: 29.8.r,
                                  ),
                                ),
                              ),
                              SvgPicture.asset(btn_power_red)
                            ],
                          ),

                          // SvgPicture.asset(icon_cross,
                          //     width: 54, height: 54),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                              Text(
                                "vrunda",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontFamily: chewy_regular,
                                    color: white_ffffff),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                img_star_purpal,width: 18.w,height: 18.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "600 point",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: sfpro_display_medium,
                                    color: white_ffffff),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
