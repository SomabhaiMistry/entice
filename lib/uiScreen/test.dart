import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_color.dart';
import '../utilites/Constant.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF42caff),
                      offset: Offset(-4, 4), // changes position of shadow
                      // offset: Offset(0, -4), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [btn_sky_blue_23A8F8,btn_sky_blue2_1B9DF6,btn_sky_blue3_0E7DEC]),
                ),
                margin: EdgeInsets.only(left: 25.w,right: 25.w),
                child: ElevatedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: chewy_regular),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // primary:btn_sky_blue_23A8F8,
                      onPrimary: Colors.white,
                      elevation: 5,
                      padding: EdgeInsets.symmetric(
                          horizontal: 0, vertical: 18.r),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.r),
                        // side: BorderSide(color: skygreen_24d39e, width: 0),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
