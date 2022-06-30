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
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child:SvgPicture.asset(b_y)),
                          SizedBox(width: 18.5.w,),
                          Text("Refer your Friend and earn",style: TextStyle(
                              fontFamily: chewy_regular,color: Colors.white,
                              fontSize: 20.sp
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Center(child: Image.asset(gift_box,height: 200.h,width: 200.w,)),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: Text(
                        "50",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          fontFamily: chewy_regular,
                          fontSize: 40.sp,
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
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Center(
                      child: Text(
                        "Your friend gets 50 Entice coins as Sign\nup bouns & you gets 50 Entice coins as\nReferral Bouns",
                        style: TextStyle(
                          color: Colors.white,
                          // wordSpacing: 3,
                          height: 1.3,
                          fontFamily: roboto_regular,
                          fontSize: 13.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(bg_copy_code_rect,width: double.infinity,),
                        Container(
                          margin: EdgeInsets.only(left: 50.w,right: 50.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "ABCDEFG123456",
                                style: TextStyle(
                                    fontFamily: chewy_regular,
                                    fontSize: 22.sp,
                                    color: yellow_F7CB46),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                width: 1.5.w,
                                height: 40.h,
                                color: line_57669B,
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  // SvgPicture.asset(img_code_rect),
                                  Image.asset(img_yellow_copy_rect),
                                  Text(
                                    "Copy code",
                                    style: TextStyle(
                                        fontFamily: chewy_regular,
                                        fontSize: 13.sp,
                                        color: brown_4B3C04),
                                    textAlign: TextAlign.center,
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: Text(
                        "Share your Referral Code via",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: roboto_regular,
                          fontSize: 14.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45.w,right: 45.w,top: 22.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(img_telegram,height: 50.h,width: 50.w,),
                          Image.asset(img_facebok_circle,height: 50.h,width: 50.w,),
                          Image.asset(img_whatsapp,height: 50.h,width: 50.w,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
