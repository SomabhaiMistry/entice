import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../SelfTesting/CommonMainFile.dart';
import '../style/my_icon_images.dart';

class HighestPaidGames1 extends StatefulWidget {
  const HighestPaidGames1({Key? key}) : super(key: key);

  @override
  State<HighestPaidGames1> createState() => _HighestPaidGames1State();
}

class _HighestPaidGames1State extends State<HighestPaidGames1> {
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
                  margin: EdgeInsets.only(left: 26.w,right: 25.w,top: 40.h),
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
                      Text("Highest Paid Games Played in a day",style: TextStyle(
                          fontFamily: chewy_regular,color: Colors.white,
                          fontSize: 20.sp
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RotatedBox(
                        quarterTurns: 2,
                        child: SvgPicture.asset(icon_forward_green,color: Colors.white,)),
                    SizedBox(width: 10.w,),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 13.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: navy_blue_192a5d
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(img_calendar,width: 26.w,height: 26.h,),
                          SizedBox(width: 9.w,),
                          Text("2022-07-01",style: TextStyle(fontFamily: chewy_regular,fontSize: 17.sp,color: white_ffffff),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),

                    SvgPicture.asset(icon_forward_green,color: Colors.white,)

                  ],
                ),

                SizedBox(height: 15.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 12.w),
                        child: Text("Rank",style: TextStyle(
                            fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                        ),),
                      ),
                    ),
                    Container(width: 1.5.w,
                      height: 64.h,
                      color: point_line_4a5c94,),
                    Expanded(
                      child: Text("User",style: TextStyle(
                          fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                      ),),
                    ),
                    Container(width: 1.5.w,
                      height: 64.h,
                      color: point_line_4a5c94,),
                    Expanded(
                      child: Text("NTIC",style: TextStyle(
                          fontSize: 13.sp,color: Colors.white,fontFamily: chewy_regular
                      ),),
                    ),
                  ],
                ),


                // ListView.builder(
                //     scrollDirection: Axis.vertical,
                //     primary: false,
                //     shrinkWrap: true,
                //     itemCount: selectCurrencyList.length,
                //     itemBuilder: (context, i) =>
                //         Container(
                //           margin: EdgeInsets.only(left: 26.w,right: 26.w,bottom: 10.h),
                //           child: Stack(
                //             alignment: Alignment.center,
                //             children: [
                //               Image.asset(img_mining_bg),
                //               Padding(
                //                 padding: EdgeInsets.symmetric(horizontal: 20.w),
                //                 child: Row(
                //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     Image.asset(selectCurrencyList[i].imgCurrency,width: 40.w,height: 40.h,),
                //                     Text(selectCurrencyList[i].tvCurrencyName,style: TextStyle(fontSize: 18.sp,color: white_ffffff,fontFamily: chewy_regular),)
                //
                //                   ],
                //                 ),
                //               )
                //             ],
                //           ),
                //         )
                //
                // ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
