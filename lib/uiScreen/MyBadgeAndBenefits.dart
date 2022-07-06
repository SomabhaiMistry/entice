import 'package:carousel_slider/carousel_slider.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/style/my_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';
import 'SwapFile.dart';

class MyBadgeAndBenefits extends StatefulWidget {
  const MyBadgeAndBenefits({Key? key}) : super(key: key);

  @override
  State<MyBadgeAndBenefits> createState() => _MyBadgeAndBenefitsState();
}

class _MyBadgeAndBenefitsState extends State<MyBadgeAndBenefits> {
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
                        "My Badge and Benefits",
                        style: TextStyle(
                            fontFamily: chewy_regular,
                            color: Colors.white,
                            fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(1.8),
                      width: double.infinity,
                      height: 28,
                      decoration: BoxDecoration(
                        // color: Color(0xffFCFBDD),
                        border: Border.all(
                            color: Color(0xffFCFBDD), width: 3),
                        //    borderRadius: BorderRadius.circular(15)
                      ),
                      child: ClipRRect(
                        // borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: LinearProgressIndicator(value: 0.8,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xffF5D656)),
                          backgroundColor: inactive_progress_313125,
                        ),
                      ),
                    ),
                    Image.asset(img_status_success,height: 42.h,width: 42.w,fit: BoxFit.fill,),
                  ],
                ),
                SizedBox(height: 12.h,),
                Center(
                  child: Text(
                    "Walker",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: chewy_regular,
                        color: white_ffffff),
                  ),
                ),
                SizedBox(
                  height: 29.h,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12.w),
                        child: CircleAvatar(
                          backgroundColor: Color(0xcc5EBB64),
                          radius: 43.r,
                          child: CircleAvatar(
                            backgroundImage: const AssetImage(img_india),
                            radius: 38.r,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        child: CircleAvatar(
                          backgroundColor: white_ffffff,
                          radius: 15.r,
                          child: CircleAvatar(
                            backgroundImage: const AssetImage(img_india),
                            radius: 11.5.r,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Center(
                  child: Text(
                    str_rutvik,
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: chewy_regular,
                        color: white_ffffff),
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                CarouselSlider(
                  items: List.generate(10, (index) => SwapFile()),
                  // items: [
                  //   SwapFile(),
                  //   SwapFile(),
                  //   SwapFile(),
                  //   SwapFile(),
                  //   SwapFile(),
                  //   SwapFile(),
                  //   SwapFile(),
                  // ],
                  //Slider Container properties
                  options: CarouselOptions(
                    height: 375.h,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    // enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    // enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
