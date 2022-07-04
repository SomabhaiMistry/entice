import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      Text("Notification",style: TextStyle(
                          fontFamily: chewy_regular,color: Colors.white,
                          fontSize: 20.sp
                      ),),
                    ],
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 25.w,right: 25.w),
                  child: Stack(
                    children: [
                      RotationTransition(
                          turns: new AlwaysStoppedAnimation(180 / 360),
                          child: Image.asset(txt_bg,width: double.infinity,fit: BoxFit.fill,height: 80,)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.w,top: 10.h),
                            width: 8.w,
                            height: 8.h,
                            decoration: BoxDecoration(
                              color: Color(0xffe65703),
                              shape: BoxShape.circle
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 35,right: 25,top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Expanded(
                                  child: Text("vaibahv",style: TextStyle(
                                    fontSize: 13.sp,
                                    color: blue_1c4175

                                  ),),
                                ),


                                SvgPicture.asset(icon_forward_green)
                              ],
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
