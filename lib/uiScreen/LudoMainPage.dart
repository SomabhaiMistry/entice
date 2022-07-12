import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';

class LudoMainPage extends StatefulWidget {
  const LudoMainPage({Key? key}) : super(key: key);

  @override
  State<LudoMainPage> createState() => _LudoMainPageState();
}

class _LudoMainPageState extends State<LudoMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              img_ludo_bg,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),

            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                ],
              ),
            ),


            Container(
              padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 16.h,bottom: 16.h),
              height: 120.h,
              decoration: BoxDecoration(
                color:cream_F0E2C7,
                borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [

                      Image.asset(img_super),
                      Text("super\nPower".toUpperCase(),style: TextStyle(
                        fontSize: 13.sp,color: brown_dark_54301d
                      ),textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(width: 12.w,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 6.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            colors: [brown1_9F715A,brown2_72442D
                            ],
                          )
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_yellow),
                              SizedBox(height: 5.w,),
                              
                              Text("Backward",style: TextStyle(
                                fontSize: 9.sp,color: Colors.white
                              ),textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_yellow),
                              SizedBox(height: 5.w,),

                              Text("Backward",style: TextStyle(
                                fontSize: 9.sp,color: Colors.white
                              ),textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_yellow),
                              SizedBox(height: 5.w,),

                              Text("Backward",style: TextStyle(
                                fontSize: 9.sp,color: Colors.white
                              ),textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_yellow),
                              SizedBox(height: 5.w,),

                              Text("Backward",style: TextStyle(
                                fontSize: 9.sp,color: Colors.white
                              ),textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(img_super_yellow),
                              SizedBox(height: 5.w,),

                              Text("Backward",style: TextStyle(
                                fontSize: 9.sp,color: Colors.white
                              ),textAlign: TextAlign.center,)
                            ],
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
