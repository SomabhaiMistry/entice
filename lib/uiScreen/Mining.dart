import 'package:entice/model/GamePointModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../model/NotificationListModel.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class Mining extends StatefulWidget {
  const Mining({Key? key}) : super(key: key);

  @override
  State<Mining> createState() => _MiningState();
}

class _MiningState extends State<Mining> {
  List<NotificationListModel> miningList = [
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
    NotificationListModel("Write your error message here with maximum two lines."),
  ];
  List<GamePointModel> gamepointList = [
    GamePointModel("1st","1.25","40"),
    GamePointModel("2nd","1.25","05"),
    GamePointModel("3rd","1.45","30"),
    GamePointModel("4th","1.25","25"),
    GamePointModel("5th","1.20","40"),
    GamePointModel("6th","1.25","20"),
    GamePointModel("7th","1.25","20"),
    GamePointModel("1st","1.25","40"),
    GamePointModel("2nd","1.25","05"),
    GamePointModel("3rd","1.45","30"),
    GamePointModel("4th","1.25","25"),
    GamePointModel("5th","1.20","40"),
    GamePointModel("6th","1.25","20"),
    GamePointModel("7th","1.25","20"),
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
                        Text("Mining",style: TextStyle(
                            fontFamily: chewy_regular,color: Colors.white,
                            fontSize: 20.sp
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: miningList.length,
                    itemBuilder: (context, i) =>
                        Container(
                          margin: EdgeInsets.only(left: 25.w,right: 25.w,bottom: 13.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(img_mining_bg),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(miningList[i].tvNOtificationTitle,style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 1.5,
                                          color: Colors.white
                                      ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(width: 12.w,),
                                    SvgPicture.asset(icon_forward_green,color: Colors.white,)

                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.w,top: 38.h),
                    child: Text("Highest Game Point in a day",style: TextStyle(
                      fontFamily: chewy_regular,fontSize: 16.sp,color: Colors.white,
                    ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 20.h,bottom: 20.h),
                    child: Stack(
                      children: [
                        Image.asset(img_point_bg),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text("Rank",style: TextStyle(
                                      fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                                  ),textAlign: TextAlign.center,),
                                ),
                                Container(width: 1.5.w,
                                height: 64.h,
                                color: point_line_4a5c94,),
                                Expanded(
                                  child: Text("NFT User",style: TextStyle(
                                      fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                                  ),textAlign: TextAlign.center,),
                                ),
                                Container(width: 1.5.w,
                                  height: 64.h,
                                  color: point_line_4a5c94,),
                                Expanded(
                                  child: Text("NTIC",style: TextStyle(
                                      fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                                  ),textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                            Container(width:double.infinity,
                              height: 1.5.h,
                              color: point_line_4a5c94,),

                            Container(
                              height: 503.5.h,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                primary: false,
                                shrinkWrap: true,
                                itemCount: gamepointList.length,
                                itemBuilder: (context, i) =>
                                    Container(
                                        transform: Matrix4.translationValues(0, -24, 0),                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Text(gamepointList[i].tvRank,style: TextStyle(
                                                    fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                                                ),textAlign: TextAlign.center,),
                                              ),
                                              Container(width: 1.5.w,
                                                height: 64.h,
                                                color: point_line_4a5c94,),
                                              Expanded(
                                                child: Text(gamepointList[i].tvUser,style: TextStyle(
                                                    fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                                                ),textAlign: TextAlign.center,),
                                              ),
                                              Container(width: 1.5.w,
                                                height: 64.h,
                                                color: point_line_4a5c94,),
                                              Expanded(
                                                child: Text(gamepointList[i].tvNtic,style: TextStyle(
                                                    fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                                                ),textAlign: TextAlign.center,),
                                              ),
                                            ],
                                          ),
                                          Container(width:double.infinity,
                                            height: 1.5.h,
                                            color: point_line_4a5c94,),

                                        ],
                                      )
                                    ),
                              ),
                            ),
                          ],
                        ),
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
