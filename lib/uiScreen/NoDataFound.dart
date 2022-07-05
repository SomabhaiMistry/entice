import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/my_icon_images.dart';

class NoDataFound extends StatefulWidget {
  const NoDataFound({Key? key}) : super(key: key);

  @override
  State<NoDataFound> createState() => _NoDataFoundState();
}

class _NoDataFoundState extends State<NoDataFound> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgound.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120,),
              Center(child: Image.asset(img_data_not_found)),
              Text("No data found",style: TextStyle(
                  fontFamily: chewy_regular,fontSize: 23.sp,color: Colors.white
              ),),
              SizedBox(height: 5.h,),
              Expanded(
                flex: 20,
                child: Text("we dint find any data related your querry",style: TextStyle(
                    fontFamily: chewy_regular,fontSize: 16.sp,color: Colors.white
                ),),
              ),
              Container(
                margin: const EdgeInsets.only(
                  // left: 16,
                  // right: 16,
                    bottom: 25
                ),
                child:  Image.asset(btn_back,height: 90,),
              ),
            ],
          ),
        )
      ),
    );
  }
}
