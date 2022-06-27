import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({Key? key}) : super(key: key);

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {

  bool tvCreateGame = true;
  bool tvJoinGame = false;

  int _n = 1000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            Image.asset(
              img_bg_blur,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 60,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.r),
                        topRight: Radius.circular(10.r)),
                    border: Border.all(color: border_black_3C3429, width: 1.w)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      str_coin,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: sf_pro_display_semibold),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, 0, -15),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(box_green),
                          Image.asset(img_plus),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 55,
              right: 105,
              child: Image.asset(
                img_wallet,
                width: 35.w,
                height: 35.h,
                fit: BoxFit.fill,
              ),
            ),
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
                          margin: EdgeInsets.only(top: 35.h,left: 23.w,right: 23.w),
                          child: Image.asset(
                            img_coin_2_player_select,
                            height: 430.h,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50.w, right: 50.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          tvCreateGame = true;
                                          tvJoinGame = false;
                                        });
                                      },
                                      child: Text(
                                        str_create,
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: tvCreateGame?pista_439050: light_pista_A0DDA4,
                                            fontFamily: fredokaOne_regular),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 38.h,
                                    width: 2.w,
                                    decoration: BoxDecoration(
                                        color: line_DEDC9A,
                                        borderRadius: BorderRadius.circular(8.r)),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          tvCreateGame = false;
                                          tvJoinGame = true;
                                        });
                                      },
                                      child: Text(
                                        str_join,
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: tvJoinGame?pista_439050: light_pista_A0DDA4,
                                            fontFamily: fredokaOne_regular),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only( left: 50.w, right: 40.w,top: 8.h),
                              child: const DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.4,
                                dashLength: 25.0,
                                dashColor:pista_439050,
                                dashRadius: 0.0,
                                dashGapLength: 6.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                            SizedBox(height: 25.h,),
                            Center(
                              child: Text(
                                str_select_amount,
                                style: TextStyle(
                                    fontFamily: chewy_regular,
                                    fontSize: 19.sp,
                                    color: pista_439050),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 25.h,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          _n--;
                                        });
                                      },
                                      child:Image.asset(img_minus,height: 45,width: 45,)),
                                  SizedBox(width: 12.w,),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(img_additional_back,width: 110.w,height: 60.h,),
                                      Text(
                                        '$_n'.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 27.sp,
                                            fontFamily: chewy_regular),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 12.w,),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          _n++;
                                        });
                                      },
                                      child:Image.asset(img_addition,height: 45,width: 45,)),

                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 60.w, left: 60.w,top: 25.h),
                                height: 70.h,
                                width: double.infinity,
                                child:SvgPicture.asset(btn_next)),
                          ],
                        ),
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                    margin: EdgeInsets.only(top: 20.h),
                                    child: SvgPicture.asset(b_y))),
                            SizedBox(
                              width: 3.w,
                            ),
                            Image.asset(
                              icon_ludo_title,
                              width: 160.w,
                              height: 70.h,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 20.h),
                                child: SvgPicture.asset(icon_question_mark)),
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
