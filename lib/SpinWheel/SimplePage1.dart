import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class SimplePage1 extends StatefulWidget {
  const SimplePage1({Key? key}) : super(key: key);

  @override
  State<SimplePage1> createState() => _SimplePage1State();
}

class _SimplePage1State extends State<SimplePage1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_spinner_bg.png"),
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
                      SvgPicture.asset(icon_cross),
                      Row(
                        children: [
                          SvgPicture.asset(icon_question_mark_yellow,width: 44,height: 50,),
                          SizedBox(
                            width: 2.w,
                          ),
                          // SvgPicture.asset(icon_question_mark_yellow,width: 44,height: 50,),

                          SvgPicture.asset(icon_setting,width: 44,height: 50,)
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 25.w,right: 15.w,top: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                    color: parrot_14FF00),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: red_D42B40),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: red_D42B40),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9.h,
                          ),

                          CircleAvatar(
                            backgroundColor: yellow_F7CB46,
                            radius: 35.r,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage(img_india),
                              radius: 29.8.r,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                img_star_purpal,width: 14.w,height: 14.h,
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
                      Container(

                        margin: EdgeInsets.only(top: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 25.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7.w),

                              child: Text("=",style: TextStyle(
                                  fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7.w),

                              child: Text("12",style: TextStyle(
                                  fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                              ),),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    // color: black_121212,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.w,right: 15.w,bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                    color: red_D42B40),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: red_D42B40),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                height: 6.h,
                                width: 6.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: red_D42B40),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9.h,
                          ),

                          CircleAvatar(
                            backgroundColor: yellow_F7CB46,
                            radius: 35.r,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage(img_india),
                              radius: 29.8.r,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                img_star_purpal,width: 14.w,height: 14.h,
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
                      Container(

                        margin: EdgeInsets.only(top: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 25.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 32.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                  color: purpal_5126A2,
                                  border: Border.all(color: purpal_5126A2,width: 1.w),
                                  borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Center(
                                child: Text("12",style: TextStyle(
                                    fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                                ),),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7.w),

                              child: Text("=",style: TextStyle(
                                  fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7.w),

                              child: Text("12",style: TextStyle(
                                  fontSize: 17.sp,fontFamily: chewy_regular,color: white_ffffff
                              ),),
                            ),
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
      ),
    );
  }
}
