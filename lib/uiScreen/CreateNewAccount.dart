import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
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
              child: Container(
                padding: EdgeInsets.only(bottom: 25.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child:SvgPicture.asset(b_y)),
                            SizedBox(
                              width: 18.5.w,
                            ),
                            Text(
                              str_create_new_account,
                              style: TextStyle(
                                  fontFamily: chewy_regular,
                                  color: Colors.white,
                                  fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(google),
                          SizedBox(width: 35.h,),
                          SvgPicture.asset(fb)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1.h,
                              width: 60.w,
                              color: blue_1287f0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Text(
                                str_or,
                                style: TextStyle(
                                    fontFamily: chewy_regular,
                                    fontSize: 20.sp, color: Colors.white),
                              ),
                            ),
                            Container(
                              height: 1.h,
                              width: 60.w,
                              color: blue_1287f0,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 45.w,top: 18.h),
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
                                style: TextStyle(
                                    color: blue_245de5,
                                    fontFamily: chewy_regular,
                                    fontSize: 20.sp),
                                decoration: InputDecoration(
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
                        margin: EdgeInsets.only(right: 45.w, left: 45.w, top: 7.h),
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
                        margin: EdgeInsets.only(right: 45.w, left: 45.w, top: 7.h),
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
                                  SizedBox(width: 3.w,),

                                  Center(child: Image.asset(img_down,height: 18.h,width: 15.w,)),

                                  SizedBox(width: 8.w,),

                                  Expanded(
                                    child: Center(
                                      child: TextField(
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
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 45.w,top: 20.h),
                        child: Text(
                          str_confirm_pwd,
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
                                obscureText: true,
                                obscuringCharacter: "*",
                                // controller: titleController,
                                style: TextStyle(
                                    color: blue_245de5,
                                    fontFamily: chewy_regular,
                                    fontSize: 20.sp),
                                decoration:  InputDecoration(
                                  isDense: true,
                                  hintText: str_enter_confirm_pwd,
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

                      Container(
                        margin: EdgeInsets.only(left: 45.w,top: 20.h),
                        child: Text(
                          str_confirm_pwd,
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
                                obscureText: true,
                                obscuringCharacter: "*",
                                style: TextStyle(
                                    color: blue_245de5,
                                    fontFamily: chewy_regular,
                                    fontSize: 20.sp),
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: str_enter_confirm_pwd,
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

                Container(
                    height: 75.h,
                    margin: EdgeInsets.only(right: 45.w, left: 45.w,top: 20.h),
                    child: SvgPicture.asset(btn_create_account,width: 340,)),

                      SizedBox(
                        height: 35.h,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              str_already_have_an_account,
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontFamily: chewy_regular),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.h),
                              height: 1.h,
                              width: 215.w,
                              color: blue_1287f0,
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
