import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class RulesPager1 extends StatefulWidget {
  const RulesPager1({Key? key}) : super(key: key);

  @override
  State<RulesPager1> createState() => _RulesPager1State();
}

class _RulesPager1State extends State<RulesPager1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              img_bg_blur,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Center(
                        child: Image.asset(
                      img_rules_bg,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 550,
                    ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -75, 0),
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
                            img_rules_rect,
                            width: 150.w,
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
                    Container(
                      margin: EdgeInsets.only(left: 65.w, right: 65.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            str_playes_description,
                            style: TextStyle(
                                fontSize: 13.sp,
                                height: 1.3,
                                fontFamily: poppins_regular,
                                color: pista_439050),
                          ),
                          Text(
                            str_four_playes,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: sfpro_display_bold,
                                fontWeight: FontWeight.w900,
                                color: pista_439050),
                          ),
                          Text(
                            str_first_playes,
                            style: TextStyle(
                                fontSize: 13.sp,
                                height: 1.3,
                                fontFamily: poppins_regular,
                                color: pista_439050),
                          ),
                          Text(
                            str_secound_playes,
                            style: TextStyle(
                                fontSize: 13.sp,
                                height: 1.3,
                                fontFamily: poppins_regular,
                                color: pista_439050),
                          ),
                          Text(
                            str_third_playes,
                            style: TextStyle(
                                fontSize: 13.sp,
                                height: 1.3,
                                fontFamily: poppins_regular,
                                color: pista_439050),
                          ),
                          Text(
                            str_two_playes,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: sfpro_display_bold,
                                fontWeight: FontWeight.w900,
                                color: pista_439050),
                          ),
                          Text(
                            str_winner,
                            style: TextStyle(
                                fontSize: 13.sp,
                                height: 1.3,
                                fontFamily: poppins_regular,
                                color: pista_439050),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
