import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_icon_images.dart';
import '../utilites/Constant.dart';

class CommonText extends StatelessWidget {

  final String title;

  const CommonText({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child:SvgPicture.asset(b_y)),
          SizedBox(width: 18.5.w,),
          Text(title,style: TextStyle(
              fontFamily: chewy_regular,color: Colors.black,
              fontSize: 20.sp
          ),),
        ],
      ),
    );
  }
}
