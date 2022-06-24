import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  Center(child: Image.asset(img_logo)),
                  SizedBox(
                    height: 30.h,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 45.w),
                    child: Text(
                      str_username_mobile_pwd,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontFamily: chewy_regular),
                    ),
                  ),

                  /*UserName/Mobile Number*/
                  Container(
                    height: 70.h,
                    margin: EdgeInsets.only(right: 45.w, left: 45.w,top: 25.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(txt_bg,width: double.infinity,fit: BoxFit.fill,),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w,right: 20.w),
                          child: TextField(
                            style: TextStyle(
                                color: blue_245de5,
                                fontFamily: chewy_regular,
                                fontSize: 20.sp),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: str_username_mobile,
                              hintStyle: TextStyle(
                                  color:gray_5e000000,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*Password*/
                  Container(
                    height: 70.h,
                    margin: EdgeInsets.only(right: 45.w, left: 45.w,top: 17.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(txt_bg,width: double.infinity,fit: BoxFit.fill,),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w,right: 20.w),
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            style: TextStyle(
                                color: blue_245de5,
                                fontFamily: chewy_regular,
                                fontSize: 20.sp),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: str_pwd,
                              hintStyle: TextStyle(
                                  color:gray_5e000000,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.go,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Container(
                  //     margin: EdgeInsets.only(right: 45.w, left: 45.w,top: 20.h),
                  //     height: 80.h,
                  //     width: double.infinity,
                  //     child: Image.asset(img_btn_login,fit: BoxFit.fill,)),

                  Container(
                    height: 75.h,
                      margin: EdgeInsets.only(right: 45.w, left: 45.w,top: 20.h),
                      child: SvgPicture.asset(btn_login,width: 340,)),

                  Container(
                    margin: EdgeInsets.only(top: 40.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.h,
                          width: 50.w,
                          color: blue_1287f0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Text(str_or, style: TextStyle(fontSize: 20.sp, color: Colors.white,
                              fontFamily: chewy_regular),),
                        ),
                        Container(
                          height: 1.h,
                          width: 50.w,
                          color: blue_1287f0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(fb),
                      SizedBox(width: 30.h,),
                      SvgPicture.asset(google),
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          str_create_new_account,
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontFamily: chewy_regular),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.h),
                          height: 1.h,
                          width: 170.w,
                          color: blue_1287f0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
