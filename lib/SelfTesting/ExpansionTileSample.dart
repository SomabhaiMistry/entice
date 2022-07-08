import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

void main() {
  runApp(new ExpansionTileSample());
}

class ExpansionTileSample extends StatefulWidget {
  @override
  ExpansionTileSampleState createState() => new ExpansionTileSampleState();
}

class ExpansionTileSampleState extends State<ExpansionTileSample> {
  String foos = 'One';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('ExpansionTile'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 25.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.w,right: 25.w),
                  decoration: BoxDecoration(
                    color: navy_blue_1E2B61,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: new ExpansionTile(
                        title: new Text("UPI Details",style: TextStyle(
                          fontSize: 16.sp,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                        // backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15.w,right: 15.w,bottom: 30.h),
                            decoration: BoxDecoration(
                                color: navy_blue_1E2B61,
                              borderRadius: BorderRadius.circular(12.r)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15.h,),
                                Text("UPI ID:  ",style: TextStyle(
                                    fontSize: 14.sp,color: white_ffffff
                                ),),
                                SizedBox(height: 6.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("yaksworld@kotak",style: TextStyle(
                                        fontSize: 14.sp,color: white_opacity_B3ffffff
                                    ),),
                                    SvgPicture.asset(icon_copy)
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 25.h),
                                    width:150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        color: white_ffffff,
                                        borderRadius: BorderRadius.circular(12.r)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]
                    ),
                  ),
                ),

                SizedBox(height: 40.h,),
                Container(
                  margin: EdgeInsets.only(left: 25.w,right: 25.w),
                  decoration: BoxDecoration(
                      color: navy_blue_1E2B61,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: new ExpansionTile(
                        title: new Text("IMPS Details",style: TextStyle(
                            fontSize: 16.sp,fontFamily: chewy_regular,color: white_ffffff
                        ),),
                        backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
                        children: <Widget>[
                          new
                          Container(
                            margin: EdgeInsets.only(left: 0.w,right: 0.w,bottom: 30.h),
                            decoration: BoxDecoration(
                                color: navy_blue_1E2B61,
                                borderRadius: BorderRadius.circular(12.r)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 5.h),
                                  child: Text("Account name: ",style: TextStyle(
                                      fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 3.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("YAKS Business Solution Pvt Ltd ",style: TextStyle(
                                          fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                                      ),),
                                      SvgPicture.asset(icon_copy)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top:12.h),
                                  child: Text("Bank name: ",style: TextStyle(
                                      fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 3.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kotak Mahindra",style: TextStyle(
                                          fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                                      ),),
                                      SvgPicture.asset(icon_copy)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 12.h),
                                  child: Text("Account no: ",style: TextStyle(
                                      fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 3.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("00000452",style: TextStyle(
                                          fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                                      ),),
                                      SvgPicture.asset(icon_copy)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 12.h),
                                  child: Text("Account IFSC: ",style: TextStyle(
                                      fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 3.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("KKBK0002749",style: TextStyle(
                                          fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                                      ),),
                                      SvgPicture.asset(icon_copy)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 12.h),
                                  child: Text("Account Type:  ",style: TextStyle(
                                      fontSize: 14,fontFamily: chewy_regular,color: white_ffffff
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 3.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Current",style: TextStyle(
                                          fontSize: 14,fontFamily: chewy_regular,color: white_opacity_B3ffffff
                                      ),),
                                      SvgPicture.asset(icon_copy)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
