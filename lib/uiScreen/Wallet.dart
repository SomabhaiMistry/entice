import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/WalletTransactionModel.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List<WalletTransactionModel> walletTransactionList = [
    WalletTransactionModel("10/02/2022", "190NICT", img_upload),
    WalletTransactionModel("10/02/2022", "170NICT", img_download),
    WalletTransactionModel("11/02/2022", "190NICT", img_upload),
    WalletTransactionModel("25/03/2022", "120NICT", img_download),
    WalletTransactionModel("10/04/2022", "110NICT", img_download),
  ];

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
                            child:SvgPicture.asset(b_y)),
                        SizedBox(
                          width: 18.5.w,
                        ),
                        Text(
                          str_wallet,
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              color: Colors.white,
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 23.w, left: 23.w, top: 30.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          img_deposite_bg,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            children: [
                              Image.asset(img_wallet,width: 38.w,height: 38.h,),
                              SizedBox(
                                width: 15.w,
                              ),
                              Expanded(
                                child: Container(
                                  transform:
                                      Matrix4.translationValues(-15, 0, 0),
                                  child: Text(
                                    str_NTIC,
                                    style: TextStyle(
                                        fontSize: 26.sp,
                                        color: yellow_F7CB46,
                                        fontFamily: aladin_regular),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20.h, right: 25.w, left: 25.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: SvgPicture.asset(btn_deposite,height: 55.h,width: double.infinity,fit: BoxFit.fill,)),
                        SizedBox(width: 15.w,),
                        Expanded(child: SvgPicture.asset(img_withrwal,height: 55.h,width: double.infinity,fit: BoxFit.fill,)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.w, top: 30.h),
                    child: Text(
                      str_transaction,
                      style: TextStyle(
                          fontFamily: chewy_regular,
                          color: Colors.white,
                          fontSize: 17.sp),
                    ),
                  ),

                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: walletTransactionList.length,
                    itemBuilder: (context, i) => Container(
                      margin: EdgeInsets.only(
                          right: 23.w, left: 23.w, bottom: 10.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            img_county_bg,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 17.w,right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    walletTransactionList[i].tvDate,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: light_green_A0DDA4,
                                        fontFamily: chewy_regular),
                                  ),
                                ),
                                Text(
                                  walletTransactionList[i].tvINR,
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      color: yellow_F7CB46,
                                      fontFamily: chewy_regular),
                                ),
                                SizedBox(width: 9.w,),
                                Image.asset(walletTransactionList[i].imgTransaction,width: 35.w,height: 35.h,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
