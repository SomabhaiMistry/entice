import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class Reward extends StatefulWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(b_y)),
                      SizedBox(
                        width: 18.5.w,
                      ),
                      Text(
                        "Rewards",
                        style: TextStyle(
                            fontFamily: chewy_regular,
                            color: Colors.white,
                            fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26, top: 36.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
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
                        width: 21.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                str_jay,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: chewy_regular,
                                    color: white_ffffff),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2.r),
                                child: Image.asset(
                                  img_india,
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 150),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 50,
                              animation: true,
                              lineHeight: 30.0,
                              animationDuration: 2500,
                              percent: 0.8,
                              center: Text(
                                "80.0%",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: chewy_regular,
                                    color: white_ffffff),
                              ),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: Colors.orange[100],
                              //background progressbar color
                              progressColor: Colors.green,
                            ),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(
                            "Need 80 RP for level 3",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontFamily: chewy_regular,
                                color: white_opacity_B3ffffff),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 54.w,
                ),
                Center(
                  child: Text(
                    "Complete bellow tasks to get the\nrewards.",
                    style: TextStyle(
                        fontFamily: chewy_regular,
                        color: Colors.white,
                        fontSize: 16.sp),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),

                  child: Stack(
                    children: [
                      Image.asset(img_county_bg,width: double.infinity,height: 350.h,fit: BoxFit.fill,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            // alignment: Alignment.topCenter,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(left: 70,right: 70,top: 0),
                                height: 30.h,
                                decoration: BoxDecoration(
                                  color: yellow_F7CB46,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,top: 4),
                                child: Text("Add Friends",style: TextStyle(color: white_ffffff,fontSize: 16.sp,fontFamily: chewy_regular),),
                              ),

                            ],
                          ),

                          Text("vabhav",style: TextStyle(
                            fontFamily: chewy_regular,color: white_ffffff,fontSize: 15
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                            ],
                          )


                        ],
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // SvgPicture.asset(bg_golden),
                    Image.asset(
                      box_golden,
                      width: 225.w,
                    ),

                    Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Text(
                            "Add 1 Friend and Get\n10 Reward Points.",
                            style: TextStyle(
                                fontFamily: chewy_regular,
                                fontSize: 16.sp,
                                color: brown_4B3C04),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Image.asset(medal),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Text(
                            "Task Completed",
                            style: TextStyle(
                                fontFamily: chewy_regular,
                                fontSize: 16.sp,
                                color: golden_DEC280),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // SvgPicture.asset(bg_golden),
                    Image.asset(
                      box_skyblue,
                      width: 225.w,
                    ),

                    Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Text(
                            "Add 2 Friend and Get\n10 Reward Points.",
                            style: TextStyle(
                                fontFamily: chewy_regular,
                                fontSize: 16.sp,
                                color: blue_1F507E),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Reward",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: chewy_regular,
                                  color: white_opacity_B3ffffff),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(img_ellipse),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontFamily: chewy_regular,
                                          fontSize: 15,
                                          color: white_ffffff),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Image.asset(
                                      img_india,
                                      width: 16,
                                      height: 16,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      log_top_bg,
                      width: 225.w,
                    ),
                    // SvgPicture.asset(bg_golden),
                    Image.asset(
                      box_skyblue,
                      width: 225.w,
                    ),


                    Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Text(
                            "Add 2 Friend and Get\n10 Reward Points.",
                            style: TextStyle(
                                fontFamily: chewy_regular,
                                fontSize: 16.sp,
                                color: blue_1F507E),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Reward",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: chewy_regular,
                                  color: white_opacity_B3ffffff),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(img_ellipse),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "20",
                                      style: TextStyle(
                                          fontFamily: chewy_regular,
                                          fontSize: 15,
                                          color: white_ffffff),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Image.asset(
                                      img_india,
                                      width: 16,
                                      height: 16,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
