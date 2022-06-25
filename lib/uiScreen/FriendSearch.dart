import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/FriendSearchModel.dart';
import '../style/my_color.dart';
import '../style/my_icon_images.dart';
import '../style/my_string.dart';
import '../utilites/Constant.dart';

class FriendSearch extends StatefulWidget {
  const FriendSearch({Key? key}) : super(key: key);

  @override
  State<FriendSearch> createState() => _FriendSearchState();
}

class _FriendSearchState extends State<FriendSearch> {
  List<FriendSearchModel> friendSearchList = [
    FriendSearchModel(img_player3,"Courtney Henry"),
    FriendSearchModel(img_player1,"Floyd Miles"),
    FriendSearchModel(img_player3,"Ronald Richards"),
    FriendSearchModel(img_player4,"Kathryn Murphy"),
    FriendSearchModel(img_player2,"Dianne Russell"),
    FriendSearchModel(img_player3,"Courtney Henry"),
    FriendSearchModel(img_player1,"Floyd Miles"),
    FriendSearchModel(img_player2,"Ronald Richards"),
    FriendSearchModel(img_player3,"Kathryn Murphy"),
    FriendSearchModel(img_player4,"Dianne Russell"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset(
              img_backgound,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          child: SvgPicture.asset(b_y)),
                      SizedBox(width: 18.5.w,),
                      Expanded(
                        child: Text(str_friends,style: TextStyle(
                            fontFamily: chewy_regular,color: Colors.white,
                            fontSize: 20.sp
                        ),),
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 10.w),
                        decoration: BoxDecoration(
                            color: blue_152354,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: navy_345078,width: 1.w)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(str_add_friends,style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,fontFamily: sf_pro_display_semibold
                            ),),
                            SizedBox(width: 8.w,),
                            Container(
                              transform: Matrix4.translationValues(0,0, -15),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SvgPicture.asset(box_green),
                                  Image.asset(img_plus),
                                ],),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 70.h,
                  margin: EdgeInsets.only(right: 25.w, left: 25.w,top: 28.h,bottom: 0.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(img_search_bg,width: double.infinity,fit: BoxFit.fill,),
                      Row(
                        children: [
                          SizedBox(width: 20.h,),
                          // SvgPicture.asset(icon_searching),
                          Image.asset(icon_search,height: 22.h,width: 22.w,),
                          SizedBox(width: 11.h,),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: chewy_regular,
                                  fontSize: 20.sp),
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: str_search,
                                hintStyle: TextStyle(
                                    color:gray_5e000000,
                                    fontFamily: chewy_regular,
                                    fontSize: 20.sp),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15.h,),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: friendSearchList.length,
                    itemBuilder: (context, i) =>
                        Container(
                          margin: EdgeInsets.only(right: 25.w, left: 25.w,top: 0,bottom: 10.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(img_county_bg,height: 70.h,width: double.infinity,fit: BoxFit.fill,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 45,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(friendSearchList[i].imgUser,width: 45,height: 45,),
                                      ),
                                    ),

                                    SizedBox(width: 12.w,),
                                    Text(friendSearchList[i].tvUserName,style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontFamily: chewy_regular
                                    ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
