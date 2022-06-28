import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var _focusNode;
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
                  Container(
                    margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(b_y)),
                        SizedBox(width: 18.5.w,),
                        Text(str_your_profile,style: TextStyle(
                            fontFamily: chewy_regular,color: Colors.white,
                            fontSize: 20.sp
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 60.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(img_india),
                            radius: 55.0,
                          ),
                        ),
                        Image.asset(img_edit_pan)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),

                  /*Full Name*/
                  Container(
                    margin: EdgeInsets.only(left: 45.w),
                    child: Text(
                      str_full_name,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontFamily: chewy_regular),
                    ),
                  ),
                  Container(
                    height: 70.h,
                    margin:
                    EdgeInsets.only(right: 45.w, left: 45.w, top: 7.h),
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
                            focusNode: _focusNode,
                            style: TextStyle(
                                color: blue_245de5,
                                fontFamily: chewy_regular,
                                fontSize: 20.sp),
                            decoration:  InputDecoration(
                              isDense: true,
                              hintText: str_enter_full_name,
                              hintStyle: TextStyle(
                                  color: gray_5e000000,
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

                  /*Email ID*/
                  Container(
                    margin: EdgeInsets.only(left: 45.w,top: 20.h),
                    child: Text(
                      str_email_iD,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontFamily: chewy_regular),
                    ),
                  ),
                  Container(
                    height: 70.h,
                    margin:  EdgeInsets.only(right: 45.w, left: 45.w, top: 7.h),
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
                            focusNode: _focusNode,
                            style: TextStyle(
                                color: blue_245de5,
                                fontFamily: chewy_regular,
                                fontSize: 20.sp),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: str_enter_email_iD,
                              hintStyle: TextStyle(
                                  color: gray_5e000000,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*UserName*/
                  Container(
                    margin: EdgeInsets.only(left: 45.w,top: 20.h),
                    child: Text(
                      str_Username,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontFamily: chewy_regular),
                    ),
                  ),
                  Container(
                    height: 70.h,
                    margin:
                    EdgeInsets.only(right: 45.w, left: 45.w, top: 7.h),
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
                            focusNode: _focusNode,
                            style: TextStyle(
                                color: blue_245de5,
                                fontFamily: chewy_regular,
                                fontSize: 20.sp),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: str_enter_Username,
                              hintStyle: TextStyle(
                                  color: gray_5e000000,
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

                  /*Mobile Number*/
                  Container(
                    margin: EdgeInsets.only(left: 45.w,top: 20.h),
                    child: Text(
                      str_mobile_no,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontFamily: chewy_regular),
                    ),
                  ),
                  Container(
                    height: 70.h,
                    margin:
                    EdgeInsets.only(right: 45.w, left: 45.w, top: 7.h),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text("+91",style: TextStyle(
                                    fontFamily: chewy_regular,color:blue_245de5,
                                    fontSize: 20.sp

                                ),),
                              ),
                              SizedBox(width: 6.w,),

                              Center(child: Image.asset(img_down,height: 18.h,width: 15.w,)),
                              SizedBox(width: 8.w,),

                              Expanded(
                                child: Center(
                                  child: TextField(
                                    focusNode: _focusNode,
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
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                      margin: EdgeInsets.only(right: 45.w, left: 45.w, top: 20.h,bottom: 20.h),
                      height: 70.h, width: double.infinity,
                      child: Image.asset(btn_save, fit: BoxFit.fill,)),

                  // Image.asset(avater1)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
