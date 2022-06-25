import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/ChooseAvatarModel.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class ChooseAvatar extends StatefulWidget {
  const ChooseAvatar({Key? key}) : super(key: key);

  @override
  State<ChooseAvatar> createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  int checkedIndex = -1;

  List<ChooseAvatarModel> chooseAvatarList = [
    ChooseAvatarModel(img_face2),
    ChooseAvatarModel(face_high),
    ChooseAvatarModel(img_flag_china),
    ChooseAvatarModel(img_flag_africa),
    ChooseAvatarModel(img_flag_afghnishtan),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 2) / 2;
    final double itemWidth = size.width / 1;
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(b_y)),
                        SizedBox(
                          width: 18.5.w,
                        ),
                        Text(
                          str_your_avatar,
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              color: Colors.white,
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(img_flag_india),
                        radius: 55.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Center(
                    child: Text(
                      str_choose_your_avtar,
                      style: TextStyle(
                          fontFamily: chewy_regular,
                          color: Colors.white,
                          fontSize: 25.sp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 17.h, left: 15.w, right: 15.w),
                    child: const DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 2.5,
                      dashLength: 10.0,
                      dashColor: Colors.white,
                      dashRadius: 0.0,
                      dashGapLength: 6.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 26.h),
                    child: GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: (itemWidth / itemHeight),
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 0.0),
                      itemCount: chooseAvatarList.length,
                      itemBuilder: (context, i) {
                        bool checked = i == checkedIndex;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              checkedIndex = i;
                            });
                          },
                          child: Center(
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 51.0,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(chooseAvatarList[i].imgAvatar),
                                      radius: 47.0,
                                    ),
                                  ),
                                ),

                                Offstage(
                                  offstage: !checked,child: Container(
                                  margin: EdgeInsets.only(top: 5.h,right: 3.w),
                                    child: Image.asset(img_circle_tick)),

                                )
                                // Image.asset(img_circle_tick)
                              ],
                            ),
                          ),
                        );

                      },
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
