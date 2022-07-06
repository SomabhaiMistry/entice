import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class SwapFile extends StatefulWidget {
  const SwapFile({Key? key}) : super(key: key);

  @override
  State<SwapFile> createState() => _SwapFileState();
}

class _SwapFileState extends State<SwapFile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 9),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(img_badge_rect_bg,width: double.infinity,fit: BoxFit.fill,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.only(left: 23.w,right: 23.w,top: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(img_gold_coin,width: 28.w,height: 28.h,),
                      SizedBox(width: 7.h,),
                      Expanded(
                        child: Text("Referral Bonus",style: TextStyle(
                            fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                        ),),
                      ),
                      Text("50NTIC",style: TextStyle(
                          fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  width:double.infinity,
                  height: 1.5.h,
                  color: point_line_4a5c94,),
                Container(
                  margin: EdgeInsets.only(left: 23.w,right: 23.w,top: 22.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(img_gold_coin,width: 28.w,height: 28.h,),
                      SizedBox(width: 7.h,),
                      Expanded(
                        child: Text("Withdrawal Limit",style: TextStyle(
                            fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                        ),),
                      ),
                      Text("50 NTIC(min)",style: TextStyle(
                          fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  width:double.infinity,
                  height: 1.5.h,
                  color: point_line_4a5c94,),
                Container(
                  margin: EdgeInsets.only(left: 23.w,right: 23.w,top: 22.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(img_deposite_bounce,width: 28.w,height: 28.h,),
                      SizedBox(width: 7.h,),
                      Expanded(
                        child: Text("Deposit Bonus",style: TextStyle(
                            fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                        ),),
                      ),
                      Text("15%",style: TextStyle(
                          fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  width:double.infinity,
                  height: 1.5.h,
                  color: point_line_4a5c94,),
                Container(
                  margin: EdgeInsets.only(left: 23.w,right: 23.w,top: 22.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(img_gold_coin,width: 28.w,height: 28.h,),
                      SizedBox(width: 7.h,),
                      Expanded(
                        child: Text("Deposit Limit",style: TextStyle(
                            fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                        ),),
                      ),
                      Text("50 NTIC(min)",style: TextStyle(
                          fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  width:double.infinity,
                  height: 1.5.h,
                  color: point_line_4a5c94,),
                Container(
                  margin: EdgeInsets.only(left: 23.w,right: 23.w,top: 22.h,bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(img_gold_coin,width: 28.w,height: 28.h,),
                      SizedBox(width: 7.h,),
                      Expanded(
                        child: Text("NFT",style: TextStyle(
                            fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                        ),),
                      ),
                      Text("1NFT",style: TextStyle(
                          fontFamily: chewy_regular,fontSize: 13.sp,color: white_ffffff
                      ),),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),);
  }
}
