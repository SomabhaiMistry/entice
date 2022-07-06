import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class RewardSwapPage1 extends StatefulWidget {
  const RewardSwapPage1({Key? key}) : super(key: key);

  @override
  State<RewardSwapPage1> createState() => _RewardSwapPage1State();
}

class _RewardSwapPage1State extends State<RewardSwapPage1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          width: double.infinity,
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [0.1, 0.5, 0.7, 0.9],
              colors: [gold1_FEED91, gold2_73502E],
            ),
          ),
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
    );
  }
}
