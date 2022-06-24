import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/BannerHomeModel.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  /*------- Game Banner List Data Here --------*/
  List<BannerHomeModel> bannerList = [
    BannerHomeModel(img_banner1),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Image.asset(
                img_home_bg,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Align(
                          alignment: Alignment.topLeft,
                            child: Image.asset(img_home_logo,width: 35.w,height: 35.h,))),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              margin: EdgeInsets.only(left: 12.h),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.r),
                                      topRight: Radius.circular(10.r)),
                                  border: Border.all(
                                      color: border_black_3C3429, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    str_coin,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontFamily: sf_pro_display_semibold),
                                  ),
                                  SizedBox(
                                    width: 9.w,
                                  ),
                                  Container(
                                    transform:
                                        Matrix4.translationValues(0, 0, -15),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SvgPicture.asset(box_green),
                                        Image.asset(img_plus),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Image.asset(img_like_user),
                            // SvgPicture.asset(icon_like_user)
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              margin: EdgeInsets.only(left: 30.w, right: 0.w),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.r),
                                      topRight: Radius.circular(10.r)),
                                  border: Border.all(
                                      color: border_black_3C3429, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Text(
                                    str_coin,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontFamily: sf_pro_display_semibold),
                                  ),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Container(
                                    transform:
                                        Matrix4.translationValues(0, 0, -15),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SvgPicture.asset(box_green),
                                        Image.asset(img_plus),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                transform:
                                    Matrix4.translationValues(0, -13, -0),
                                child: Image.asset(
                                  img_file,
                                  height: 50.h,
                                  width: 55.w,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: bannerList.length,
                    itemBuilder: (context, i) => Container(
                      margin: EdgeInsets.only(left: 5.w,right: 5.w,bottom: 8.h),
                      child: Image.asset(
                        bannerList[i].imgBanner,
                        height: 240.h,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 16.w, right: 16.w, bottom: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // SvgPicture.asset(icon_star),
                            Image.asset(img_star),
                            Image.asset(img_profile),
                            Image.asset(img_setting),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
