import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class WelCome extends StatefulWidget {
  const WelCome({Key? key}) : super(key: key);

  @override
  State<WelCome> createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {
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
                              child: SvgPicture.asset(b_y)),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 25.h,left: 45.w),
                          child: Text(str_welcome,style: TextStyle(
                              color: Colors.white,fontSize: 25.sp,
                              fontFamily: chewy_regular
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 7.5.h,left: 45.w,right: 45.w),
                          child: Text(str_account_successfully_created,style: TextStyle(
                              color: Colors.white,fontSize: 17.sp,
                              fontFamily: chewy_regular
                          ),),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),

                        /*UserName*/
                        Container(
                          margin: EdgeInsets.only(left: 45.w),
                          child: Text(
                            str_Username,
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
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 75.h,
                    margin: EdgeInsets.only(right: 45.w, left: 45.w,bottom: 20.h),
                    child: SvgPicture.asset(btn_continue,width: double.infinity)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
