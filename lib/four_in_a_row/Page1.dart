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
        backgroundColor: Colors.red,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgound.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(b_y),
                    Row(
                      children: [
                        SvgPicture.asset(icon_cross),
                        SizedBox(
                          width: 12.w,
                        ),
                        SvgPicture.asset(b_y)
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: black_121212,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                  // height: 160,
                  color: pista_439050,
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
                              Image.asset(img_south_africa,width: 25,height: 15,fit: BoxFit.fill,),
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
                              Image.asset(
                                img_afghanistan,
                                width: 12.w,
                                height: 12.h,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                img_afghanistan,
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
                                    fontFamily: sfpro_display_medium,
                                    color: white_ffffff),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            b_y,
                            width: 54.w,
                            height: 54.h,
                          ),
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
                          // CircleAvatar(
                          //   backgroundColor: red_DD364A,
                          //   radius: 35.r,
                          //   child: CircleAvatar(
                          //     backgroundImage: const AssetImage(img_india),
                          //     radius: 29.8.r,
                          //   ),
                          // ),


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
                              Image.asset(img_south_africa,width: 25,height: 15,fit: BoxFit.fill,),
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
                              Image.asset(
                                img_afghanistan,
                                width: 12.w,
                                height: 12.h,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                img_afghanistan,
                                width: 12.w,
                                height: 12.h,
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
