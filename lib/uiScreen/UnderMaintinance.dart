import 'package:entice/style/my_color.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_icon_images.dart';

class UnderMaintinance extends StatefulWidget {
  const UnderMaintinance({Key? key}) : super(key: key);

  @override
  State<UnderMaintinance> createState() => _UnderMaintinanceState();
}

class _UnderMaintinanceState extends State<UnderMaintinance> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Image.asset(img_under_maintance,width: 270,)),
                Container(
                  transform: Matrix4.translationValues(0, -20, 0),
                  child: Text("Under maintainance",style: TextStyle(
                    fontSize: 23.sp,fontFamily: chewy_regular,color: Colors.white
                  ),),
                ),
                SizedBox(height: 15,),
                Container(
                  transform: Matrix4.translationValues(0, -25, 0),
                  child: Text("We are  upgrading our system, please come\nback later",style: TextStyle(
                    fontSize: 16.sp,color: white_opacity_B3ffffff
                  ),
                  textAlign: TextAlign.center,),
                ),
                SizedBox(height: 57,),
                Text("Come back after 4 hrs 50 min",style: TextStyle(
                  fontSize: 16.sp,fontFamily: chewy_regular,color: Colors.white
                ),),

              ],
            )
          ],
        ),
      ),
    );

  }
}
