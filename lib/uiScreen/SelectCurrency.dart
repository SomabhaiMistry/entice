import 'package:entice/model/SelectCurrencyModel.dart';
import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../SelfTesting/CommonMainFile.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';

class SelectCurrency extends StatefulWidget {
  const SelectCurrency({Key? key}) : super(key: key);

  @override
  State<SelectCurrency> createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  List<SelectCurrencyModel> selectCurrencyList = [
    SelectCurrencyModel(img_currency_gold_coin,"INR"),
    SelectCurrencyModel(img_currency_gold_coin,"INR"),
    SelectCurrencyModel(img_currency_gold_coin,"INR"),
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
                      Text("Select Currency",style: TextStyle(
                          fontFamily: chewy_regular,color: Colors.white,
                          fontSize: 20.sp
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: selectCurrencyList.length,
                    itemBuilder: (context, i) =>
                        Container(
                          margin: EdgeInsets.only(left: 26.w,right: 26.w,bottom: 10.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(img_mining_bg),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(selectCurrencyList[i].imgCurrency,width: 40.w,height: 40.h,),
                                    SizedBox(width: 12.w,),
                                    Expanded(child: Text(selectCurrencyList[i].tvCurrencyName,style: TextStyle(fontSize: 18.sp,color: white_ffffff,fontFamily: chewy_regular),)),
                                    SvgPicture.asset(icon_forward_green,color: Colors.white,)

                                  ],
                                ),
                              )
                            ],
                          ),
                        )

                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
