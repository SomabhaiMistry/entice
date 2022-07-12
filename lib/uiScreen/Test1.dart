import 'package:carousel_slider/carousel_slider.dart';
import 'package:entice/SelfTesting/CommonMainFile.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/uiScreen/RewardSwapPage1.dart';
import 'package:entice/uiScreen/RewardSwapPage2.dart';
import 'package:entice/uiScreen/RewardSwapPage3.dart';
import 'package:entice/uiScreen/SwapFile.dart';
import 'package:flutter/material.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: blue_0f5c91,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Stack(
              //   clipBehavior: Clip.none,
              //   children: [
              //     Container(
              //       margin: EdgeInsets.only(left: 10, right: 10, top: 25),
              //       height: 295.h,
              //       width: double.infinity,
              //       decoration: BoxDecoration(
              //         color: yellow_F7CB46,
              //         borderRadius: BorderRadius.circular(12),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey,
              //             spreadRadius: 0.5,
              //             blurRadius: 3,
              //             offset: Offset(0, 3), // changes position of shadow
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Stack(
              //             children: [
              //               Container(
              //                 height: 50.h,
              //                 decoration: BoxDecoration(
              //                   color: orange_FF9353,
              //                   borderRadius: BorderRadius.only(
              //                     bottomLeft: Radius.circular(75),
              //                     bottomRight: Radius.circular(75),
              //                     topLeft: Radius.circular(12),
              //                     topRight: Radius.circular(12),
              //                   ),
              //                   boxShadow: [
              //                     BoxShadow(
              //                       color: Colors.grey,
              //                       spreadRadius: 0.5,
              //                       blurRadius: 5,
              //                       offset: Offset(
              //                           0, 1), // changes position of shadow
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //               Container(
              //                 margin: EdgeInsets.only(left: 20.w, top: 15.h),
              //                 child: Text(
              //                   "Add Friends",
              //                   style: TextStyle(
              //                       color: white_ffffff,
              //                       fontSize: 16.sp,
              //                       fontFamily: sf_pro_display_semibold),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 25.3.h,
              //           ),
              //           CarouselSlider(
              //             items: [
              //               RewardSwapPage1(),
              //               RewardSwapPage2(),
              //               RewardSwapPage3(),
              //             ],
              //             //Slider Container properties
              //             options: CarouselOptions(
              //               height: 200.h,
              //               // aspectRatio: 16 / 9,
              //               viewportFraction: 0.80,
              //               initialPage: 0,
              //               reverse: false,
              //               autoPlay: false,
              //               enableInfiniteScroll: false,
              //               scrollDirection: Axis.horizontal,
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),


              // ChewyRegular("APp Name", 15, blue_2FA1C7),

              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    child: CircleAvatar(
                      backgroundColor: white_ffffff,
                      radius: 18.r,
                      child: CircleAvatar(
                        backgroundImage: const AssetImage(img_india),
                        radius: 13.r,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 6,top: 3,bottom: 3,right: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              // stops: [0.1, 0.5, 0.7, 0.9],
                              colors: [gold1_FEED91, gold2_73502E],
                            ),
                          ),
                          child: Text(
                            "Lvl 2",
                            style: TextStyle(
                                fontSize: 14, color: white_ffffff),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(right: 2.5, child: Image.asset(img_cycle))
                ],
              ),



              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff7D49F5),
                    boxShadow: [
                    BoxShadow(
                    color: white_ffffff,
                      spreadRadius: -12.0,
                      blurRadius: 12,
                // offset: Offset(0, 5), // changes position of shadow
              ),
            ],
                ),
              ),

              Container(
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color:black_121212.withOpacity(0.5), // darker color
                    ),
                    BoxShadow(
                      color: Color(0xff7D49F5), // background color
                      spreadRadius: -5.0,
                      blurRadius: 12.0,
                    ),
                  ],
                ),
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 60.0,
                percent: 1.0,
                animateFromLastPercent: true,
                animation: true,
                animationDuration: 500,
                backgroundColor: white_ffffff,
                progressColor: Colors.pink,
              ),
              CircularProgressIndicator(
                strokeWidth: 100,
                value: 0.25,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation(Colors.pink),
              ),
              SfRadialGauge(axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 20,
                  showLabels: false,
                  showTicks: false,
                  startAngle: 270,
                  endAngle: 270,
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.05,
                    color:Color(0x26000000),
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                  pointers: <GaugePointer>[
                    RangePointer(
                      color:Color(0x26000000),
                      value: 100,
                      width: 1,
                      pointerOffset: 0.05,
                      sizeUnit: GaugeSizeUnit.factor,
                    )
                  ],
                )
              ]),

            ],
          ),
        ),
      ),
    );
  }
}
