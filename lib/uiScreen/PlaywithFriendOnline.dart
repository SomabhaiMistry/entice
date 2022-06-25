import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class PlaywithFriendOnline extends StatefulWidget {
  const PlaywithFriendOnline({Key? key}) : super(key: key);

  @override
  State<PlaywithFriendOnline> createState() => _PlaywithFriendOnlineState();
}

class _PlaywithFriendOnlineState extends State<PlaywithFriendOnline> {
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
                SizedBox(height: 55.h,),
                Center(child: Image.asset(img_ludo_title_big,fit: BoxFit.fill,width: 260.w,)),
                SizedBox(height: 30.h,),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(img_deposite_bg,height: 65.h,width:195.w,fit: BoxFit.fill,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child:  Text(str_code,style: TextStyle(
                            fontSize: 26.sp,
                            color: yellow_F7CB46,
                            fontFamily: aladin_regular
                        ),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 110.h,),
                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(img_player1,height: 55.h,width: 55.w,fit: BoxFit.fill,),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Center(
                  child: Text(str_vrunda_patel,style: TextStyle(
                      fontSize: 16.sp,color: Colors.white,fontFamily: chewy_regular
                  ),),
                ),
                SizedBox(height: 11.h,),
                Center(
                  child: Text(str_vs,style: TextStyle(
                      fontSize: 32.sp,color:orange_FF9353,fontFamily: chewy_regular
                  ),),
                ),
                SizedBox(height: 15.h,),
                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(img_player2,height: 55.h,width: 55.w,fit: BoxFit.fill,),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Center(
                  child: Text(str_jay,style: TextStyle(
                      fontSize: 16.sp,color: Colors.white,fontFamily: chewy_regular
                  ),),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(left: 20.w),
                      margin: EdgeInsets.only(bottom: 12.h),
                      child: Text(str_not_close_page,
                        style: TextStyle(
                          fontFamily: poppins_regular,fontSize: 11.sp,
                          color: white_opacity_B3ffffff
                        ),
                      ),
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
