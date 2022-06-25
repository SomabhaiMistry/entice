import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class CoinPlayerSelectionOnline extends StatefulWidget {
  const CoinPlayerSelectionOnline({Key? key}) : super(key: key);

  @override
  State<CoinPlayerSelectionOnline> createState() =>
      _CoinPlayerSelectionOnlineState();
}

class _CoinPlayerSelectionOnlineState extends State<CoinPlayerSelectionOnline> {
  bool first = false;
  bool secound = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              top: 40,
              right: 10,
              child: Container(
                padding: EdgeInsets.only(left: 0.w),
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
                      width: 12.w,
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
            Container(
                margin: EdgeInsets.only(top: 35.h, right: 95.r),
                child: Image.asset(
                  img_wallet,
                  width: 35.w,
                  height: 35.h,
                  fit: BoxFit.fill,
                )),
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                    child: Container(
                        margin: EdgeInsets.only(left: 15.w, right: 15.w),
                        child: Image.asset(
                          img_coin_2_player_select,
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 525,
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -125, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.only(top: 20.h),
                                  child: SvgPicture.asset(b_y))),

                          SizedBox(
                            width: 3.w,
                          ),
                          Image.asset(icon_ludo_title,width: 190.w,height: 75.h,fit: BoxFit.fill,),
                          SizedBox(
                            width: 3.w,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 20.h),
                              child: SvgPicture.asset(icon_question_mark)),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        transform: Matrix4.translationValues(0, -65, 0),
                        child: Text(
                          str_select_friend,
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              fontSize: 19.sp,
                              color: pista_439050),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -20, 0),
                      margin: EdgeInsets.only(left: 50.w, right: 50.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SvgPicture.asset(icon_red_coin,height: 24.h,width: 24.w,),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    SvgPicture.asset(icon_blue_coin,height: 24.h,width: 24.w,),

                                  ],
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        first = true;
                                        secound = false;
                                      });
                                    },
                                    child: Image.asset(first
                                        ? img_selected_coin
                                        : img_ring,height: 45,width: 45,)),


                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  str_two_player,
                                  style: TextStyle(
                                      fontFamily: chewy_regular,
                                      color: pista_439050,
                                      fontSize: 20.sp),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SvgPicture.asset(
                                      icon_red_coin,
                                      height: 24.h,
                                      width: 24.w,),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    SvgPicture.asset(
                                      icon_blue_coin,
                                      height: 24.h,
                                      width: 24.w,),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    SvgPicture.asset(
                                      icon_yellow_coin,
                                      height: 24.h,
                                      width: 24.w,),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    SvgPicture.asset(
                                      icon_green_coin,
                                      height: 24.h,
                                      width: 24.w,),
                                  ],
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        first = false;
                                        secound = true;
                                      });
                                    },
                                    child: Image.asset(secound
                                        ? img_selected_coin
                                        : img_ring,height: 45,width: 45,)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  str_four_player,
                                  style: TextStyle(
                                      fontFamily: chewy_regular,
                                      color: pista_439050,
                                      fontSize: 20.sp),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 55.w, left: 55.w,top: 25.h),
                        height: 70.h,
                        width: double.infinity,
                        child:SvgPicture.asset(btn_play,fit: BoxFit.fill,)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
