import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class PlaywithFriendFourPlayerOnline extends StatefulWidget {
  const PlaywithFriendFourPlayerOnline({Key? key}) : super(key: key);

  @override
  State<PlaywithFriendFourPlayerOnline> createState() => _PlaywithFriendFourPlayerOnlineState();
}

class _PlaywithFriendFourPlayerOnlineState extends State<PlaywithFriendFourPlayerOnline> {
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
                      Image.asset(img_deposite_bg,height: 65.h,width:175.w,fit: BoxFit.fill,),
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
                SizedBox(height: 95.h,),

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
                  child: Text(str_vaibhav,style: TextStyle(
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

                Container(
                  margin: EdgeInsets.only(left: 25.w,right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              width: 70,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(img_player2,height: 55.h,width: 55.w,fit: BoxFit.fill,),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Center(
                              child: Text(str_vrunda_patel,style: TextStyle(
                                  fontSize: 16.sp,color: Colors.white,fontFamily: chewy_regular
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              width: 70,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(img_player3,height: 55.h,width: 55.w,fit: BoxFit.fill,),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Center(
                              child: Text(str_jay,style: TextStyle(
                                  fontSize: 16.sp,color: Colors.white,fontFamily: chewy_regular
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(img_player4,height: 55.h,width: 55.w,fit: BoxFit.fill,),
                              ),
                            ),

                            SizedBox(height: 5.h,),
                            Center(
                              child: Text(str_rutvik,style: TextStyle(
                                  fontSize: 16.sp,color: Colors.white,fontFamily: chewy_regular
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 12
                      ),
                      child: Text(str_not_close_page,
                        style: TextStyle(
                            fontFamily: poppins_regular,fontSize: 11.sp,
                            color:white_opacity_B3ffffff
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
