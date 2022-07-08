import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../SelfTesting/CommonMainFile.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
class PaymentTransfer extends StatefulWidget {
  const PaymentTransfer({Key? key}) : super(key: key);
  @override
  State<PaymentTransfer> createState() => _PaymentTransferState();
}

class _PaymentTransferState extends State<PaymentTransfer> {
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(b_y)),
                        SizedBox(
                          width: 18.5.w,
                        ),
                        Text(
                          "Payment transfer",
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              color: Colors.white,
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 26.h),
                    margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 39.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: rect_blue_2E4078,
                      borderRadius: BorderRadius.circular(24.r),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff4A5C94),
                          spreadRadius: 2.5,
                          blurRadius: 0.5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order ID:",style: TextStyle(
                            fontSize: 14.sp,color: white_ffffff
                        ),),
                        SizedBox(height: 6.h,),
                        Text("cf4a6deb-4ado-4ofa-8aao-3ceb8231e212",style: TextStyle(
                            fontSize: 14.sp,color: white_opacity_B3ffffff
                        ),),
                        SizedBox(height: 15.h,),
                        Text("You will Transfer:",style: TextStyle(
                            fontSize: 14.sp,color: white_ffffff
                        ),),
                        SizedBox(height: 6.h,),
                        Text("\$20",style: TextStyle(
                            fontSize: 14.sp,color: white_opacity_B3ffffff
                        ),),
                        SizedBox(height: 15.h,),
                        Text("You will Receive: ",style: TextStyle(
                            fontSize: 14.sp,color: white_ffffff
                        ),),
                        SizedBox(height: 6.h,),
                        Text("400 Entice (NTIC)",style: TextStyle(
                            fontSize: 14.sp,color: white_opacity_B3ffffff
                        ),),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.h,),
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
                  SizedBox(height: 20.h,),
                  Container(
                    margin: EdgeInsets.only(left: 25.w,right: 25.w),
                    decoration: BoxDecoration(
                        color: navy_blue_1E2B61,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: new ExpansionTile(
                        // trailing: SvgPicture.asset(ellipse,width: 20,height: 20,color: white_ffffff,),
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
                  Container(
                    margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 25.h),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: white_ffffff,
                      borderRadius: BorderRadius.circular(12.r)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 26.w,top: 17.h),
                    child: Text("Upload screenshot of Transaction",style: TextStyle(
                        fontFamily: chewy_regular,fontSize: 16.sp,
                        color: white_ffffff
                    ),),
                  ),
                  Container(
                      height: 90.h,
                      margin: EdgeInsets.only(
                          right: 26.w, left: 26.w, top: 17.h, bottom: 20.h),
                      child: SvgPicture.asset(
                          btn_create_account,width: double.infinity
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
