import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class AddNewFriend extends StatefulWidget {
  const AddNewFriend({Key? key}) : super(key: key);

  @override
  State<AddNewFriend> createState() => _AddNewFriendState();
}

class _AddNewFriendState extends State<AddNewFriend> {
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
            Container(
              margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 40.h),
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
                  Text(str_friends,style: TextStyle(
                      fontFamily: chewy_regular,color: Colors.white,
                      fontSize: 20.sp
                  ),),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child:SvgPicture.asset(add_friends)),
                Center(
                  child: Container(
                    transform: Matrix4.translationValues(0, -12, 0),
                    child: Text(str_looks_like,
                    style: TextStyle(
                      fontFamily: chewy_regular,
                      fontSize: 16.sp,color: Colors.white,
                      height: 1.5
                    ),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),

            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 70.h,
                margin: EdgeInsets.only(
                    left: 45.w,
                    right: 45.w,
                    bottom: 20.h
                ),
                child:Image.asset(btn_add_new_friend,fit: BoxFit.fill,width: 340,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
