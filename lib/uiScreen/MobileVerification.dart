import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class MobileVerification extends StatefulWidget {
  const MobileVerification({Key? key}) : super(key: key);

  @override
  State<MobileVerification> createState() => _MobileVerificationState();
}

class _MobileVerificationState extends State<MobileVerification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 25.w,top: 50.h),
                              child:SvgPicture.asset(b_y)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25.h,left: 45.w),
                          child: Text(str_mobile_verification,style: TextStyle(
                              color: Colors.white,fontSize: 25.sp,
                              fontFamily: chewy_regular
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 7.5.h,left: 45.w,right: 45.w),
                          child: Text(str_please_enter_OTP,style: TextStyle(
                              color: Colors.white,fontSize: 17.sp,
                              fontFamily: chewy_regular
                          ),),
                        ),

                        /*Mobile Number*/
                        Container(
                          margin: EdgeInsets.only(left: 45.w,top: 35.h),
                          child: Text(
                            str_mobile_no,
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: chewy_regular,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          height: 70.h,
                          margin:
                          EdgeInsets.only(right: 45.w, left: 45.w, top: 10.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                txt_bg,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                                child: TextField(
                                  // controller: titleController,
                                  style: TextStyle(
                                      color: blue_245de5,
                                      fontFamily: chewy_regular,
                                      fontSize: 20.sp),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText: str_enter_mobile_no,
                                    hintStyle: TextStyle(
                                        color: gray_5e000000,
                                        fontFamily: chewy_regular,
                                        fontSize: 20.sp),
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /*OTP Code*/
                        Container(
                          margin: EdgeInsets.only(left: 45.w,top: 20.h),
                          child: Text(
                            str_otp,
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: chewy_regular,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          height: 70.h,
                          margin:
                          EdgeInsets.only(right: 45.w, left: 45.w, top: 10.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                txt_bg,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        style: TextStyle(
                                            color: blue_245de5,
                                            fontFamily: chewy_regular,
                                            fontSize: 20.sp),
                                        decoration: InputDecoration(
                                          isDense: true,
                                          hintText: str_enter_otp,
                                          hintStyle: TextStyle(
                                              color: gray_5e000000,
                                              fontFamily: chewy_regular,
                                              fontSize: 20.sp),
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                      ),
                                    ),

                                    Text(str_timer,
                                        style: TextStyle(
                                            fontSize: 16.sp,color: blue_0f5c91,fontFamily: chewy_regular)
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 42.h,),
                        Center(
                          child: Text(str_resend_otp,
                              style: TextStyle(
                                  fontSize: 18.sp,color: pink_FE685D,fontFamily: chewy_regular)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 75.h,
                    margin: EdgeInsets.only(right: 45.w, left: 45.w,bottom: 20.h),
                    child: SvgPicture.asset(btn_continue,width: 340,)),

                ],
            )
          ],
        ),
      ),
    );
  }
}
