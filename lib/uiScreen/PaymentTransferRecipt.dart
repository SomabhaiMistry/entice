import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../SelfTesting/CommonMainFile.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';

class PaymentTransferRecipt extends StatefulWidget {
  const PaymentTransferRecipt({Key? key}) : super(key: key);

  @override
  State<PaymentTransferRecipt> createState() => _PaymentTransferReciptState();
}

class _PaymentTransferReciptState extends State<PaymentTransferRecipt> {
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 26.h),
                    margin: EdgeInsets.only(left: 26.w,right: 26.w,top: 39.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1E2B61),
                      borderRadius: BorderRadius.circular(24.r),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff001849),
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
                        Text("You need to transfer USDT to below address",style: TextStyle(
                          fontSize: 16.sp,color: white_ffffff,fontFamily: chewy_regular
                        ),),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 2,
                          color: Color(0x16ffffff),
                        ),
                        SizedBox(height: 10.h,),

                        Text("USDT : 20",style: TextStyle(
                          fontSize: 14.sp,color: white_ffffff
                        ),),
                        SizedBox(height: 15.h,),
                        Text("Network",style: TextStyle(
                          fontSize: 14.sp,color: white_ffffff
                        ),),
                        SizedBox(height: 6.h,),
                        Text("Binance(BEP20)",style: TextStyle(
                          fontSize: 14.sp,color: white_opacity_B3ffffff
                        ),),
                        SizedBox(height: 15.h,),
                        Text("Wallet Address ",style: TextStyle(
                          fontSize: 14.sp,color: white_ffffff
                        ),),
                        SizedBox(height: 6.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("400 Entice (NTIC)",style: TextStyle(
                              fontSize: 14.sp,color: white_opacity_B3ffffff
                            ),),

SvgPicture.asset(icon_copy)
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 2,
                          color: Color(0x16ffffff),
                        ),
                        SizedBox(height: 10.h,),

                        Text("Once you have completed the transaction, update the Transaction Hash below",style: TextStyle(
                            fontSize: 14.sp,color: white_ffffff
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 26.w,top: 17.h),
                    child: Text("Transaction Hash",style: TextStyle(
                      fontFamily: chewy_regular,fontSize: 16.sp,
                      color: white_ffffff
                    ),),
                  ),
                  Container(
                    height: 70.h,
                    margin:
                    EdgeInsets.only(right: 26.w, left: 26.w, top: 7.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          txt_bg,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: TextField(
                            style: TextStyle(
                                color: blue_245de5,
                                fontFamily: chewy_regular,
                                fontSize: 20.sp),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: str_enter_full_name,
                              hintStyle: TextStyle(
                                  color: gray_5e000000,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
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
