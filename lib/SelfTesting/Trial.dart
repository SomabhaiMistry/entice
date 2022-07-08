import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [


              ElevatedButton(onPressed: (){
                Fluttertoast.showToast(msg: "This is a Toast",toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: pink_FE685D,
                textColor: white_ffffff,
                fontSize: 15);
              }, child: Text("Set Toast")),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text(
                    'tjhis is Contain'
                  ),action: SnackBarAction(
                    label: 'ok',onPressed: (){
                      print('on press working');
                  },
                  ),

                ));
              }, child: Text("Set Snakbar")),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 0),
                decoration: BoxDecoration(
                    color: black_121212
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h,),
                    Text("UPI ID:  ",style: TextStyle(
                        fontSize: 14.sp,color: white_ffffff
                    ),),
                    SizedBox(height: 6.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("yaksworld@kotak",style: TextStyle(
                            fontSize: 14.sp,color: white_opacity_B3ffffff
                        ),),
                        SvgPicture.asset(icon_copy)
                      ],
                    ),
                    SizedBox(height: 6.h,),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 25.h),
                        width:150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: white_ffffff,
                            borderRadius: BorderRadius.circular(12.r)
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                color: yellow_F7CB46,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 5.h),
                        child: Text("Account name: ",style: TextStyle(
                            fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("YAKS Business Solution Pvt Ltd ",style: TextStyle(
                                fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                            ),),
                            SvgPicture.asset(icon_copy)
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top:12.h),
                        child: Text("Bank name: ",style: TextStyle(
                            fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Kotak Mahindra",style: TextStyle(
                                fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                            ),),
                            SvgPicture.asset(icon_copy)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 12.h),
                        child: Text("Account no: ",style: TextStyle(
                            fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("00000452",style: TextStyle(
                                fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                            ),),
                            SvgPicture.asset(icon_copy)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 12.h),
                        child: Text("Account IFSC: ",style: TextStyle(
                            fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("KKBK0002749",style: TextStyle(
                                fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                            ),),
                            SvgPicture.asset(icon_copy)
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 12.h),
                        child: Text("Account Type:  ",style: TextStyle(
                            fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Current",style: TextStyle(
                                fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                            ),),
                            SvgPicture.asset(icon_copy)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          )
        ),
      ),
    );
  }
}
