import 'package:entice/SpinWheel/CommonText.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';
import '../style/my_string.dart';

class BottomButtonFix extends StatefulWidget {
  const BottomButtonFix({Key? key}) : super(key: key);

  @override
  State<BottomButtonFix> createState() => _BottomButtonFixState();
}

class _BottomButtonFixState extends State<BottomButtonFix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            alignment: Alignment.center,
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

                  CommonText(title: "Create an Account"),


                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(box_yellow,height: 45,width: 120,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(img_india,height: 18,width: 18,),
                          SizedBox(width: 8,),
                          Text("Leder Board",style: TextStyle(
                            color: white_ffffff,fontFamily: chewy_regular,
                            fontSize: 15
                          ),)
                        ],
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25,top: 30),
                    child: Text("Welcome",style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: chewy_regular,
                        color: black_121212
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25,top: 0),
                    child: Text("Enter UYour Use123r Name and progress",style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: chewy_regular,
                        color: black_121212
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 20),
                    child: Text("UserName",style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: chewy_regular,
                        color: black_121212
                    ),),
                  ),
                  /*UserName/Mobile Number*/
                  Container(
                    height: 70.h,
                    margin:
                    EdgeInsets.only(right: 25.w, left: 25.w, top: 2.h),
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
                              hintText: str_enter_Username,
                              hintStyle: TextStyle(
                                  color: gray_5e000000,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*UserName/Mobile Number*/
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 12),
                    child: Text("PWD",style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: chewy_regular,
                        color: black_121212
                    ),),
                  ),
                  Container(
                    height: 70.h,
                    margin:
                    EdgeInsets.only(right: 25.w, left: 25.w, top: 2.h),
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
                              hintText: str_enter_Username,
                              hintStyle: TextStyle(
                                  color: gray_5e000000,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                          margin: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 16
                          ),
                          child:SvgPicture.asset(btn_login)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
