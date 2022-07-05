import 'package:entice/model/NotificationListModel.dart';
import 'package:entice/style/my_color.dart';
import 'package:flutter/cupertino.dart';
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
  List<NotificationListModel> notificationList = [
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
  ];
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
                SizedBox(height: 20.h,),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  shrinkWrap: true,
                  itemCount: notificationList.length,
                  itemBuilder: (context, i) =>
                      Container(
                        margin: EdgeInsets.only(left: 25.w,right: 25.w,bottom: 15.h),
                        child: Stack(
                          // alignment: Alignment.center,
                          children: [
                            Image.asset(img_notification_bg,width: double.infinity,fit: BoxFit.fill,),
                            Container(
                              // color: Colors.yellow,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  Container(
                                    margin: EdgeInsets.only(left: 10.w,top: 10.h),
                                    width: 7.w,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffe65703),
                                        shape: BoxShape.circle
                                    ),
                                  ),

                                  Container(
                                    // color: Colors.yellow,
                                    margin: EdgeInsets.only(left: 18.w,top: 0.h,right:20.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(notificationList[i].tvNOtificationTitle,style: TextStyle(
                                              fontSize: 13.sp,
                                              height: 1.5,
                                              color: blue_1c4175
                                          ),),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                        child: SvgPicture.asset(icon_forward_green))

                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
