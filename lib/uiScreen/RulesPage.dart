import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';
import 'RulesPager1.dart';

class RulesPage extends StatefulWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  State<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  final List<Widget> _samplePages = [
    RulesPager1(),
    Container(
        color: Colors.pink,
        child: const Center(child: Text('Page 2'))),
    Container(
        color: Colors.red,
        child: const Center(child: Text('Page 3'))),
  ];
  final _controller = PageController();
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Flexible(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: _samplePages.length,
              onPageChanged: (value){
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return _samplePages[index % _samplePages.length];
              },
            ),
          ),
         Container(
           margin: EdgeInsets.only(top: 20.h,right: 15.w),
           child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15.w),
                        margin: EdgeInsets.only(left: 12.h,top: 60.h),
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
                              width: 9.w,
                            ),
                            Text(
                              str_coin,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: sf_pro_display_semibold),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Container(
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
                        margin: EdgeInsets.only(top: 56.h),
                          child: Image.asset(img_wallet,width: 35.w,height: 35.h,)),
                    ],
                  )
                ],
              ),
         ),

          Padding(
            padding: EdgeInsets.only(bottom: 25.w, left: 32.w, right: 32.w),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                          duration: _kDuration, curve: _kCurve);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                            img_backward,height: 45.h,width: 45.w,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_samplePages.length, (index) => buildDot(index, context),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: _kDuration, curve: _kCurve);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          img_forward,height: 45.h,width: 45.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
