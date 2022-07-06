import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class RewardSwapPage3 extends StatefulWidget {
  const RewardSwapPage3({Key? key}) : super(key: key);

  @override
  State<RewardSwapPage3> createState() => _RewardSwapPage3State();
}

class _RewardSwapPage3State extends State<RewardSwapPage3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [0.1, 0.5, 0.7, 0.9],
              colors: [skyblue1_b8dced,skyblue2_1c4b72],
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
              height: 65.h,
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
                  width: 9.w,
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
        Image.asset(
          img_lock,
        ),
        Container(
          width: double.infinity,
          height: 225.h,
          decoration: BoxDecoration(
              color: Color(0xB3002236),
              borderRadius: BorderRadius.circular(12.r)
          ),
        ),
      ],
    );
  }
}
