import 'package:entice/utilites/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../style/my_color.dart';

class ButtonDemo extends StatefulWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 100,
      ),
      lowerBound: 0.0,
      upperBound: 0.3,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Center(
                child: GestureDetector(
                  onTapDown: _tapDown,
                  onTapUp: _tapUp,
                  child: Transform.scale(
                    scale: _scale,
                    child: _animatedButton(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }Widget  _animatedButton() {
    return Container(
      margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 10.h),
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Color(0XFFd3d3d3),
              blurRadius: 5.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [btn_sky_blue_23A8F8,btn_sky_blue2_1B9DF6,btn_sky_blue3_0E7DEC],
          )),
      child: Center(
        child: Text(
          'Login',
          style: TextStyle
            (
              letterSpacing:3,

              shadows: <Shadow>[
            Shadow(
              // offset: Offset(10.0, 10.0),
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            Shadow(
              // offset: Offset(10.0, 10.0),
              blurRadius: 8.0,
              color: Color.fromARGB(125, 0, 0, 255),
            ),
          ],
              fontSize: 25.0,
              fontFamily: chewy_regular,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}