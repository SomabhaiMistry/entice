import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class CreateFourPlayerSelectOnline extends StatefulWidget {
  const CreateFourPlayerSelectOnline({Key? key}) : super(key: key);

  @override
  State<CreateFourPlayerSelectOnline> createState() =>
      _CreateFourPlayerSelectOnlineState();
}

class _CreateFourPlayerSelectOnlineState extends State<CreateFourPlayerSelectOnline> {

  bool coinRed = false;
  bool coinBlue = false;
  bool coinYellow = false;
  bool coinGreen = false;
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
              top: 35,
              right: 105,
              child: Image.asset(
                img_wallet,
                width: 35.w,
                height: 35.h,
                fit: BoxFit.fill,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Center(child: Container(
                    margin: EdgeInsets.only(left: 25.w,right: 25.w),
                    child: Image.asset(coin_select_bg,fit: BoxFit.fill,))),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -110, 0),
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
                          Image.asset(icon_ludo_title,width: 160.w,height: 70.h,),
                          SizedBox(
                            width: 3.w,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 20.h),
                              child: SvgPicture.asset(icon_question_mark)),
                        ],
                      ),
                    ),

                    Container(
                      transform: Matrix4.translationValues(0, -80, 0),
                      child: Center(
                        child: Text(str_select_color,
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              fontSize: 19.sp,
                              color: pista_439050),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Container(
                      transform: Matrix4.translationValues(0, -35, 0),
                      margin: EdgeInsets.only(left: 40.w,right: 40.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(icon_cystal_red),
                                SizedBox(height: 5.h,),
                                Text(str_red,style: TextStyle(
                                    fontFamily: sfpro_display_bold,
                                    color: red_DD364A,fontSize: 12.sp
                                ),),
                                SizedBox(height: 8.h,),
                                SvgPicture.asset(icon_red_coin),
                                SizedBox(height: 20.h,),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        coinRed = true;
                                        coinBlue = false;
                                        coinYellow = false;
                                        coinGreen = false;
                                      });
                                    },
                                    child: Image.asset(coinRed
                                        ? img_selected_coin
                                        : img_ring,height: 45.h,width: 45.w,)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(icon_cystal_blue),
                                SizedBox(height: 5.h,),
                                Text(str_blue,style: TextStyle(
                                    fontFamily: sfpro_display_bold,
                                    color: blue_2FA1C7,fontSize: 12.sp
                                ),),
                                SizedBox(height: 8.h,),
                                SvgPicture.asset(icon_blue_coin),
                                SizedBox(height: 20.h,),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        coinRed = false;
                                        coinBlue = true;
                                        coinYellow = false;
                                        coinGreen = false;
                                      });
                                    },
                                    child: Image.asset(coinBlue
                                        ? img_selected_coin
                                        : img_ring,height: 45.h,width: 45.w,)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(icon_cystal_yellow),
                                SizedBox(height: 5.h,),
                                Text(str_yellow,style: TextStyle(
                                    fontFamily: sfpro_display_bold,
                                    color: lemon_FFBF02,fontSize: 12.sp
                                ),),
                                SizedBox(height: 8.h,),
                                SvgPicture.asset(icon_yellow_coin),
                                SizedBox(height: 20.h,),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        coinRed = false;
                                        coinBlue = false;
                                        coinYellow = true;
                                        coinGreen = false;
                                      });
                                    },
                                    child: Image.asset(coinYellow
                                        ? img_selected_coin
                                        : img_ring,height: 45.h,width: 45.w,)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [SvgPicture.asset(icon_cystal_green),
                                SizedBox(height: 5.h,),
                                Text(str_green,style: TextStyle(
                                    fontFamily: sfpro_display_bold,
                                    color: parrot_green_3D9A43,fontSize: 12.sp
                                ),),
                                SizedBox(height: 8.h,),
                                SvgPicture.asset(icon_green_coin),
                                SizedBox(height: 20.h,),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        coinRed = false;
                                        coinBlue = false;
                                        coinYellow = false;
                                        coinGreen = true;
                                      });
                                    },
                                    child: Image.asset(coinGreen
                                        ? img_selected_coin
                                        : img_ring,height: 45.h,width: 45.w,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                        margin: EdgeInsets.only(right: 55.w, left: 55.w,top: 5.h),
                        height: 70.h,
                        width: double.infinity,
                        child:SvgPicture.asset(btn_next,fit: BoxFit.fill,)),
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
