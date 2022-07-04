import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: pink_FE685D,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Center(child: SvgPicture.asset(bg_rect_add_friend,)),
                Center(child: SvgPicture.asset(bg)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Container(
                      margin: EdgeInsets.only(left: 75,right: 75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(b_y),
                          Text(
                            "Settings",
                            style: TextStyle(
                              letterSpacing:3,
                              color: Color(0xffe0f9e1),
                              fontWeight: FontWeight.bold,
                              fontFamily: chewy_regular,
                              fontSize: 28,
                              shadows: <Shadow>[
                                Shadow(
                                  // offset: Offset(10.0, 10.0),
                                  blurRadius: 3.0,
                                  color: Color(0xff104d1b),
                                ),
                                Shadow(
                                  // offset: Offset(10.0, 10.0),
                                  blurRadius: 8.0,
                                  color: Color(0xff104d1b),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SvgPicture.asset(icon_cross),
                        ],
                      ),
                    )

                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
