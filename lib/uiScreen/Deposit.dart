import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class Deposit extends StatefulWidget {
  const Deposit({Key? key}) : super(key: key);

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
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
                      Text(str_deposit,style: TextStyle(
                          fontFamily: chewy_regular,color: Colors.white,
                          fontSize: 20.sp
                      ),),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 45.h,left: 26.w,right: 26.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(str_destination_address,style: TextStyle(
                        fontFamily: chewy_regular,color: Colors.white,
                        fontSize: 17.sp,
                      ),),

                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(img_copy,width: 65.w,height: 30.h,),
                          Text(str_copy,style: TextStyle(
                            fontFamily: poppins_bold,color:green_23652F,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 23.w, left: 23.w,top:10.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(img_deposite_bg,height: 70.h,width: double.infinity,fit: BoxFit.fill,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child:  Text(str_deposit_address,style: TextStyle(
                            fontSize: 15.sp,
                            color: yellow_F7CB46,
                            height: 1.3,
                            fontFamily: poppins_regular
                        ),
                        textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 25.h,left: 26.w),
                  child: Text(str_network,style: TextStyle(
                    fontFamily: chewy_regular,color: Colors.white,
                    fontSize: 17.sp,
                  ),),
                ),

                Container(
                  margin: EdgeInsets.only(right: 23.w, left: 23.w,top:10.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(img_deposite_bg,height: 65.h,width: double.infinity,fit: BoxFit.fill,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child:  Text(str_network_key,style: TextStyle(
                            fontSize: 15.sp,
                            color: yellow_F7CB46,
                            fontFamily: poppins_regular
                        ),),
                      ),
                    ],
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
