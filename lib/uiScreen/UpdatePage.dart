import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                            margin: EdgeInsets.only(top: 30.h,left: 23.w,right: 23.w),
                            child:
                            Stack(
                              children: [
                                Image.asset(img_setting_bg,fit: BoxFit.fill,),
                                SvgPicture.asset(bg,width: double.infinity, fit: BoxFit.fill,)
                              ],
                            )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 90.h,left: 50.w,right: 50.w),
                              child:Center(
                                child: Text(
                                  "Please update the app to enjoy full featured app with more benefits for you.",style: TextStyle(
                                    fontSize: 20.sp,color: Colors.black,fontFamily: chewy_regular),
                                textAlign: TextAlign.center,),

                              )
                          ),
                          SizedBox(height: 21.h,),

                          Container(
                              margin: EdgeInsets.only(top: 90.h,left: 50.w,right: 50.w),
                              child:Center(
                                child: Text(
                                  "New update available",style: TextStyle(
                                    fontSize: 18.sp,color: Colors.black,fontFamily: chewy_regular),
                                  textAlign: TextAlign.center,),

                              )
                          ),
                          // Center(
                          //   child: Text(
                          //     "settMinor bug fixed",style: TextStyle(
                          //       fontSize: 14.sp,color:black_60000000,fontFamily: chewy_regular),
                          //   ),
                          // ),
                          // SizedBox(height: 7.h,),
                          // Center(
                          //   child: Text(
                          //     "New Games added",style: TextStyle(
                          //       fontSize: 14.sp,color:black_60000000,fontFamily: chewy_regular),
                          //   ),
                          // ),
                          // SizedBox(height: 7.h,),
                          // Center(
                          //   child: Text(
                          //     "Updated UI",style: TextStyle(
                          //       fontSize: 14.sp,color:black_60000000,fontFamily: chewy_regular),
                          //   ),
                          // ),
                          // SizedBox(height: 7.h,),
                          // Center(
                          //   child: Text(
                          //     "Improved game playing experience",style: TextStyle(
                          //       fontSize: 14.sp,color:black_60000000,fontFamily: chewy_regular),
                          //   ),
                          // ),
                          // SizedBox(height: 7.h,),
                          // Center(
                          //   child: Text(
                          //     "Improved Ludo game UI",style: TextStyle(
                          //       fontSize: 14.sp,color:black_60000000,fontFamily: chewy_regular),
                          //   ),
                          // ),
                          // SizedBox(height: 7.h,),
                          // Center(
                          //   child: Text(
                          //     "Updated NFT logic",style: TextStyle(
                          //       fontSize: 14.sp,color:black_60000000,fontFamily: chewy_regular),
                          //   ),
                          // ),
                          SizedBox(height: 30.h,),

                          Center(child: Image.asset(btn_update_now,height: 78.h,))
                        ],
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                            ),
                            Image.asset(
                              img_update,
                              width: 160.w,
                              height: 70.h,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                    margin: EdgeInsets.only(top: 20.h),
                                    child: SvgPicture.asset(icon_cross))),
                          ],
                        ),
                      ),
                    ],
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
