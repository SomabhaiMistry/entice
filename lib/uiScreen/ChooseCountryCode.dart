import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/ChooseCountryCodeModel.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class ChooseCountryCode extends StatefulWidget {
  const ChooseCountryCode({Key? key}) : super(key: key);

  @override
  State<ChooseCountryCode> createState() => _ChooseCountryCodeState();
}

class _ChooseCountryCodeState extends State<ChooseCountryCode> {

  List<ChooseCountryCodeModel> countryCodeList = [
    ChooseCountryCodeModel(img_india,"INDIA","+91"),
    ChooseCountryCodeModel(img_uk,"UK","+92"),
    ChooseCountryCodeModel(img_serbia,"Serbia","+93"),
    ChooseCountryCodeModel(img_south_africa,"South Africa","+94"),
    ChooseCountryCodeModel(img_afghanistan,"Afghanistan","+95"),
    ChooseCountryCodeModel(img_india,"INDIA","+91"),
    ChooseCountryCodeModel(img_uk,"UK","+92"),
    ChooseCountryCodeModel(img_serbia,"Serbia","+93"),
    ChooseCountryCodeModel(img_south_africa,"South Africa","+94"),
    ChooseCountryCodeModel(img_afghanistan,"Afghanistan","+95"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset(img_backgound,height: double.infinity,
              width: double.infinity, fit: BoxFit.fill,),
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
                          child:SvgPicture.asset(b_y)),
                      SizedBox(width: 18.5.w,),
                      Text(str_choose_country_code,style: TextStyle(
                          fontFamily: chewy_regular,color: Colors.white,
                          fontSize: 20.sp
                      ),),
                    ],
                  ),
                ),

                Container(
                  height: 65.h,
                  margin: EdgeInsets.only(right: 25.w, left: 25.w,top: 28.h,bottom: 8.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(img_search_bg,width: double.infinity,fit: BoxFit.fill,),
                      Row(
                        children: [
                          SizedBox(width: 20.h,),
                          // SvgPicture.asset(icon_searching),
                          Image.asset(icon_search,height: 22.h,width: 22.w,),
                          SizedBox(width: 11.h,),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: str_search,
                                hintStyle: TextStyle(
                                    color:gray_5e000000,
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
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: countryCodeList.length,
                    itemBuilder: (context, i) =>
                        Container(
                          margin: EdgeInsets.only(right: 25.w, left: 25.w,top: 0,bottom: 10.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(img_county_bg,width: double.infinity,fit: BoxFit.fill,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18.w),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(countryCodeList[i].imgFlag,width: 25.w,height: 25.h,fit:BoxFit.fill,),
                                    SizedBox(width: 11.w,),
                                    Expanded(
                                      child: Text(countryCodeList[i].tvCountryName,style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Colors.white,
                                          fontFamily: chewy_regular
                                      ),),
                                    ),Text(countryCodeList[i].tvCountryCode,style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontFamily: chewy_regular
                                    ),),
                                  ],
                                ),
                              ),
                            ],
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
