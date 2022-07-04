import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
              image: AssetImage("assets/images/backgound.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 25.h),
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
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(1.8),
                                  width: 250,
                                  height: 28,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD6D6D6),
                                      border: Border.all(
                                          color: white_ffffff, width: 2),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    child: LinearProgressIndicator(value: 0.8,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xff20a872)),
                                      backgroundColor: Color(0xffD6D6D6),
                                    ),
                                  ),
                                ),
                                Row(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "80",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: chewy_regular,
                                        color: white_ffffff,
                                        shadows: <Shadow>[
                                          Shadow(
                                            // offset: Offset(10.0, 10.0),
                                            blurRadius: 3.0,
                                            color:Color(0xff000000),
                                          ),
                                          Shadow(
                                            // offset: Offset(10.0, 10.0),
                                            blurRadius: 8.0,
                                            color: Color(0xff1F507E),
                                          ),
                                        ],),
                                    ),
                                    Text(
                                      " / 100",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: chewy_regular,
                                        color: white_ffffff,
                                        shadows: <Shadow>[
                                          Shadow(
                                            // offset: Offset(10.0, 10.0),
                                            blurRadius: 3.0,
                                            color:Color(0xff000000),
                                          ),
                                          Shadow(
                                            // offset: Offset(10.0, 10.0),
                                            blurRadius: 8.0,
                                            color: Color(0xff1F507E),
                                          ),
                                        ],),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 9.h,
                            ),

                            Text(
                              "Need 80 RP for level 3",
                              style: TextStyle(
                                  fontSize: 13.sp,
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
                  SizedBox(
                    height: 28.h,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        title_box,
                        width: double.infinity,
                        height: 330.h,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50.w,top: 13.h),
                            child: Text(
                              "Add Friends",
                              style: TextStyle(
                                  color: white_ffffff,
                                  fontSize: 16.sp,
                                  fontFamily: chewy_regular),
                            ),
                          ),
                          SizedBox(height:30.h),
                          Container(
                            margin: EdgeInsets.only(left: 32.w,right: 32.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:10.w,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              "Add 1 Friend and Get\n10 Reward Points.",
                                              style: TextStyle(
                                                  fontFamily: chewy_regular,
                                                  fontSize: 16.sp,
                                                  color: brown_7e411f),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Image.asset(medal),
                                          SizedBox(
                                            height: 12.h,
                                          ),
                                          Center(
                                            child: Text(
                                              "Task Completed",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: golden_DEC280),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width:7.w,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
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
                                            height: 20.h,
                                          ),

                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(3),
                                                width: 200,
                                                height: 28,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffD6D6D6),
                                                    border: Border.all(
                                                        color: blue_1F507E, width: 1.5),
                                                    borderRadius: BorderRadius.circular(8)),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                                  child: LinearProgressIndicator(value: 0.8,
                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                        Color(0xfffed65c)),
                                                    backgroundColor: Color(0xffD6D6D6),
                                                  ),
                                                ),
                                              ),
                                              Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "80",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: chewy_regular,
                                                      color: white_ffffff,
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 3.0,
                                                          color:Color(0xff000000),
                                                        ),
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 8.0,
                                                          color: Color(0xff1F507E),
                                                        ),
                                                      ],),
                                                  ),
                                                  Text(
                                                    " / 100",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: chewy_regular,
                                                      color: white_ffffff,
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 3.0,
                                                          color:Color(0xff000000),
                                                        ),
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 8.0,
                                                          color: Color(0xff1F507E),
                                                        ),
                                                      ],),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 22.h,
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
                                                          fontSize: 15,
                                                          fontFamily: chewy_regular,
                                                          color: white_ffffff,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 3.0,
                                                              color:Color(0xff000000),
                                                            ),
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 8.0,
                                                              color: Color(0xff1F507E),
                                                            ),
                                                          ],),
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
                                  SizedBox(
                                    width:7.w,
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        box_skyblue,
                                        width: 225.w,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
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
                                            height: 65.h,
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
                                                width: 9,
                                              ),
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(img_ellipse),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      SizedBox(width: 12,),
                                                      Text(
                                                        "12",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontFamily: chewy_regular,
                                                          color: white_ffffff,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 3.0,
                                                              color:Color(0xff000000),
                                                            ),
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 8.0,
                                                              color: Color(0xff1F507E),
                                                            ),
                                                          ],),
                                                      ),
                                                      Image.asset(diamond,height:35.h,width:35.w,)
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 213.w,
                                        height: 225.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xB3002236),
                                            borderRadius: BorderRadius.circular(6.r)
                                        ),
                                      ),
                                      Image.asset(
                                        img_lock,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:7.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15.h,),  
                  
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        title_box,
                        width: double.infinity,
                        height: 330.h,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50.w,top: 13.h),
                            child: Text(
                              "Play Game",
                              style: TextStyle(
                                  color: white_ffffff,
                                  fontSize: 16.sp,
                                  fontFamily: chewy_regular),
                            ),
                          ),
                          SizedBox(height:30.h),
                          Container(
                            margin: EdgeInsets.only(left: 32.w,right: 32.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:10.w,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              "Add 1 Friend and Get\n10 Reward Points.",
                                              style: TextStyle(
                                                  fontFamily: chewy_regular,
                                                  fontSize: 16.sp,
                                                  color: brown_7e411f),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Image.asset(medal),
                                          SizedBox(
                                            height: 12.h,
                                          ),
                                          Center(
                                            child: Text(
                                              "Task Completed",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: golden_DEC280),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width:7.w,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
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
                                            height: 20.h,
                                          ),

                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(3),
                                                width: 200,
                                                height: 28,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffD6D6D6),
                                                    border: Border.all(
                                                        color: blue_1F507E, width: 1.5),
                                                    borderRadius: BorderRadius.circular(8)),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                                  child: LinearProgressIndicator(value: 0.8,
                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                        Color(0xfffed65c)),
                                                    backgroundColor: Color(0xffD6D6D6),
                                                  ),
                                                ),
                                              ),
                                              Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "80",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: chewy_regular,
                                                      color: white_ffffff,
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 3.0,
                                                          color:Color(0xff000000),
                                                        ),
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 8.0,
                                                          color: Color(0xff1F507E),
                                                        ),
                                                      ],),
                                                  ),
                                                  Text(
                                                    " / 100",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: chewy_regular,
                                                      color: white_ffffff,
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 3.0,
                                                          color:Color(0xff000000),
                                                        ),
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 8.0,
                                                          color: Color(0xff1F507E),
                                                        ),
                                                      ],),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 22.h,
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
                                                          fontSize: 15,
                                                          fontFamily: chewy_regular,
                                                          color: white_ffffff,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 3.0,
                                                              color:Color(0xff000000),
                                                            ),
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 8.0,
                                                              color: Color(0xff1F507E),
                                                            ),
                                                          ],),
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
                                  SizedBox(
                                    width:7.w,
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        box_skyblue,
                                        width: 225.w,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
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
                                            height: 65.h,
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
                                                width: 9,
                                              ),
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(img_ellipse),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      SizedBox(width: 12,),
                                                      Text(
                                                        "12",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontFamily: chewy_regular,
                                                          color: white_ffffff,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 3.0,
                                                              color:Color(0xff000000),
                                                            ),
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 8.0,
                                                              color: Color(0xff1F507E),
                                                            ),
                                                          ],),
                                                      ),
                                                      Image.asset(diamond,height:35.h,width:35.w,)
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 213.w,
                                        height: 228.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xB3002236),
                                            borderRadius: BorderRadius.circular(6.r)
                                        ),
                                      ),
                                      Image.asset(
                                        img_lock,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:7.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 15.h,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        title_box,
                        width: double.infinity,
                        height: 330.h,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50.w,top: 13.h),
                            child: Text(
                              "Play Games in a day",
                              style: TextStyle(
                                  color: white_ffffff,
                                  fontSize: 16.sp,
                                  fontFamily: chewy_regular),
                            ),
                          ),
                          SizedBox(height:30.h),
                          Container(
                            margin: EdgeInsets.only(left: 32.w,right: 32.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:10.w,
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        box_golden,
                                        width: 225.w,
                                      ),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              "Add 1 Friend and Get\n10 Reward Points.",
                                              style: TextStyle(
                                                  fontFamily: chewy_regular,
                                                  fontSize: 16.sp,
                                                  color: brown_7e411f),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Image.asset(medal),
                                          SizedBox(
                                            height: 12.h,
                                          ),
                                          Center(
                                            child: Text(
                                              "Task Completed",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: golden_DEC280),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width:7.w,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
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
                                            height: 20.h,
                                          ),

                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(3),
                                                width: 200,
                                                height: 28,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffD6D6D6),
                                                    border: Border.all(
                                                        color: blue_1F507E, width: 1.5),
                                                    borderRadius: BorderRadius.circular(8)),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                                  child: LinearProgressIndicator(value: 0.8,
                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                        Color(0xfffed65c)),
                                                    backgroundColor: Color(0xffD6D6D6),
                                                  ),
                                                ),
                                              ),
                                              Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "80",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: chewy_regular,
                                                      color: white_ffffff,
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 3.0,
                                                          color:Color(0xff000000),
                                                        ),
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 8.0,
                                                          color: Color(0xff1F507E),
                                                        ),
                                                      ],),
                                                  ),
                                                  Text(
                                                    " / 100",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: chewy_regular,
                                                      color: white_ffffff,
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 3.0,
                                                          color:Color(0xff000000),
                                                        ),
                                                        Shadow(
                                                          // offset: Offset(10.0, 10.0),
                                                          blurRadius: 8.0,
                                                          color: Color(0xff1F507E),
                                                        ),
                                                      ],),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 22.h,
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
                                                          fontSize: 15,
                                                          fontFamily: chewy_regular,
                                                          color: white_ffffff,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 3.0,
                                                              color:Color(0xff000000),
                                                            ),
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 8.0,
                                                              color: Color(0xff1F507E),
                                                            ),
                                                          ],),
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
                                  SizedBox(
                                    width:7.w,
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        box_skyblue,
                                        width: 225.w,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
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
                                            height: 65.h,
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
                                                width: 9,
                                              ),
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(img_ellipse),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      SizedBox(width: 12,),
                                                      Text(
                                                        "12",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontFamily: chewy_regular,
                                                          color: white_ffffff,
                                                          shadows: <Shadow>[
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 3.0,
                                                              color:Color(0xff000000),
                                                            ),
                                                            Shadow(
                                                              // offset: Offset(10.0, 10.0),
                                                              blurRadius: 8.0,
                                                              color: Color(0xff1F507E),
                                                            ),
                                                          ],),
                                                      ),
                                                      Image.asset(diamond,height:35.h,width:35.w,)
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 213.w,
                                        height: 228.h,
                                        decoration: BoxDecoration(
                                            color: Color(0xB3002236),
                                            borderRadius: BorderRadius.circular(6.r)
                                        ),
                                      ),
                                      Image.asset(
                                        img_lock,
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    width:7.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
