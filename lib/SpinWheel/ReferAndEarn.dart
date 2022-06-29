import 'package:dotted_border/dotted_border.dart';
import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                img_backgound,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.w, top: 18.h),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(b_y)),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Center(
                    child: Text(
                      "Refer your Friend and earn",
                      style: TextStyle(
                          fontFamily: chewy_regular,
                          color: Colors.white,
                          fontSize: 20.sp),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Center(
                      child: SvgPicture.asset(
                    icon_cross,
                    height: 120.h,
                    width: 120.w,
                  )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: Text(
                      "50",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold,
                        fontFamily: chewy_regular,
                        fontSize: 35,
                        shadows: <Shadow>[
                          Shadow(
                            // offset: Offset(10.0, 10.0),
                            blurRadius: 3.0,
                            color: pink_FE685D,
                          ),
                          Shadow(
                            // offset: Offset(10.0, 10.0),
                            blurRadius: 8.0,
                            color: yellow_F7CB46,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Center(
                    child: Text(
                      "Entics coins",
                      style: TextStyle(
                        color: Colors.white,
                        wordSpacing: 5,
                        fontFamily: roboto_regular,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Center(
                    child: Text(
                      "Your friend gets 50 Entice coins as Sign\nup bouns & you gets 50 Entice coins as\nReferral Bouns",
                      style: TextStyle(
                        color: Colors.white,
                        // wordSpacing: 3,
                        height: 1.3,
                        fontFamily: roboto_regular,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                    ],
                  ),
                  // DottedBorder(
                  //   borderType: BorderType.RRect,
                  //   radius: Radius.circular(12),
                  //   padding: EdgeInsets.all(6),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.all(Radius.circular(12)),
                  //     child: Container(
                  //       height: 100,
                  //       width: 120,
                  //       color: Colors.amber,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Center(
                    child: Text(
                      "Share your Referral Code via",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: roboto_regular,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          icon_cross,
                          height: 50.h,
                          width: 50.w,
                        ),
                        SvgPicture.asset(
                          icon_cross,
                          height: 50.h,
                          width: 50.w,
                        ),
                        SvgPicture.asset(
                          icon_cross,
                          height: 50.h,
                          width: 50.w,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
