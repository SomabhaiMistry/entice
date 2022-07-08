import 'package:entice/model/GameHistoryModel.dart';
import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../SelfTesting/CommonMainFile.dart';
import '../style/my_icon_images.dart';

class GameHistory extends StatefulWidget {
  const GameHistory({Key? key}) : super(key: key);

  @override
  State<GameHistory> createState() => _GameHistoryState();
}

class _GameHistoryState extends State<GameHistory> {
  List<GameHistoryModel> gameHistoryList = [
    GameHistoryModel(img_game_history_bg1,img_credit_btn,"Spin Fight","500","1000","05 July 10:50 AM"),
    GameHistoryModel(img_game_history_bg1,img_credit_btn,"Spin Fight","500","1000","05 July 10:50 AM"),
    GameHistoryModel(img_game_history_bg1,img_credit_btn,"Spin Fight","500","1000","05 July 10:50 AM"),
   ];
  String amount = "500";
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
                    margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(b_y)),
                        SizedBox(
                          width: 18.5.w,
                        ),
                        Text(
                          "Game History",
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              color: Colors.white,
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(img_gane_win_bg),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "13",
                                      style: TextStyle(
                                          fontFamily: chewy_regular,
                                          fontSize: 23.sp,
                                          color: parrot_5EBB64),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      "WIN GAMES",
                                      style: TextStyle(
                                          fontFamily: chewy_regular,
                                          fontSize: 14.sp,
                                          color: light_green_A0DDA4),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "13",
                                      style: TextStyle(
                                          fontFamily: chewy_regular,
                                          fontSize: 23.sp,
                                          color: pink_FF3434),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      "Loss GAMES",
                                      style: TextStyle(
                                          fontFamily: chewy_regular,
                                          fontSize: 14.sp,
                                          color: light_pink_FF9292),
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
                  Center(
                      child: Text(
                    "Check all your winning and loosing games history",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: chewy_regular,
                        color: white_ffffff),
                  )),
                  SizedBox(
                    height: 14.h,
                  ),
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: gameHistoryList.length,
                      itemBuilder: (context, i) =>
                          Container(
                            margin: EdgeInsets.only(left: 26.w,right: 26.w,bottom: 10.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(gameHistoryList[i].imgCardBg),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 0.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(gameHistoryList[i].tvGameTitle,
                                              style: TextStyle(
                                                  fontSize: 24.sp,
                                                  color: white_ffffff,
                                                  fontFamily: chewy_regular),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Image.asset(
                                              gameHistoryList[i].imgCredit,
                                              height: 35.h,
                                              width: 65.w,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Game Amount : " + gameHistoryList[i].tvGameAmount,style: TextStyle(
                                                color: white_ffffff,fontSize: 13.sp
                                            ),),
                                            Container(
                                              margin: EdgeInsets.only(top: 15.h),
                                              width: double.infinity,
                                              height: 2.h,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomLeft,
                                                  end: Alignment.topRight,
                                                  // stops: [0.1, 0.5, 0.7, 0.9],
                                                  colors: [Color(0xfffffe74),Color(0xff7d833b),Color(0x00000000),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 15.h,),
                                            Text("Win/Loose Amt. : "+gameHistoryList[i].tvWinAmount,style: TextStyle(
                                                color: white_ffffff,fontSize: 13.sp
                                            ),),
                                            Container(
                                              margin: EdgeInsets.only(top: 15.h),
                                              width: double.infinity,
                                              height: 2.h,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomLeft,
                                                  end: Alignment.topRight,
                                                  // stops: [0.1, 0.5, 0.7, 0.9],
                                                  colors: [Color(0xfffffe74),Color(0xff7d833b),Color(0x00000000),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 15.h,),
                                            Text(gameHistoryList[i].tvDateTime,style: TextStyle(
                                                color: white_ffffff,fontSize: 13.sp
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
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
