import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class RewardSwapPage2 extends StatefulWidget {
  const RewardSwapPage2({Key? key}) : super(key: key);

  @override
  State<RewardSwapPage2> createState() => _RewardSwapPage2State();
}

class _RewardSwapPage2State extends State<RewardSwapPage2> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 12),
          width: double.infinity,
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [0.1, 0.5, 0.7, 0.9],
              colors: [blue1_8BBFDE,blue2_76AFD0,blue3_417197
              ],
            ),
          ),
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
                  margin: EdgeInsets.only(left: 20.w,right: 35.w),
                  padding: EdgeInsets.all(3),
                  height: 32,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                          color: blue_1F507E, width: 1.5),
                      borderRadius: BorderRadius.circular(8)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: LinearProgressIndicator(value: 0.8,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xfffed65c)),
                      // backgroundColor: Color(0xffD6D6D6),
                      backgroundColor: Color(0xffffffff),
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
                  "Rewards",
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
        )

      ],
    );
  }
}
