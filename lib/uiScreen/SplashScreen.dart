import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../style/my_icon_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(img_backgound,height: double.infinity,
            width: double.infinity,fit: BoxFit.fill,),
            Image.asset(img_logo)
          ],
        ),
      ),
    );
  }
}
