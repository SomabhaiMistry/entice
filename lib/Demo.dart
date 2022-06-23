import 'package:entice/style/my_icon_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SvgPicture.asset(fb),
            SvgPicture.asset(b_y),
          ],


        ),
      ),
    );
  }
}
