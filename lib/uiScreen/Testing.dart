import 'package:carousel_slider/carousel_slider.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/style/my_icon_images.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../style/my_string.dart';
import 'SwapFile.dart';

class Testing extends StatefulWidget {
  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: pink_FE685D,
          // appBar: new AppBar(
          //   leading: SvgPicture.asset(b_y),
          //   title: new Text(
          //     "Rewards",
          //     style: TextStyle(color: Colors.amber),
          //   ),
          //   backgroundColor: Colors.transparent,
          //   elevation:0,
          // ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgound.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        // padding: EdgeInsets.all(1.8),
                        width: double.infinity,
                        height: 28,
                        decoration: BoxDecoration(
                          // color: Color(0xffFCFBDD),
                          border: Border.all(
                              color: Color(0xffFCFBDD), width: 3),
                          //    borderRadius: BorderRadius.circular(15)
                        ),
                        child: ClipRRect(
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: LinearProgressIndicator(value: 0.8,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xffF5D656)),
                            backgroundColor: inactive_progress_313125,
                          ),
                        ),
                      ),
                      Image.asset(img_status_success,height: 42.h,width: 42.w,fit: BoxFit.fill,),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Center(
                    child: Text(
                      "Walker",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: chewy_regular,
                          color: white_ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12.w),
                          child: CircleAvatar(
                            backgroundColor: Color(0xcc5EBB64),
                            radius: 43.r,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage(img_india),
                              radius: 38.r,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          child: CircleAvatar(
                            backgroundColor: white_ffffff,
                            radius: 15.r,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage(img_india),
                              radius: 11.5.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Center(
                    child: Text(
                      str_rutvik,
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: chewy_regular,
                          color: white_ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  CarouselSlider(
                    items: List.generate(10, (index) => SwapFile()),
                    // items: [
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    // ],
                    //Slider Container properties
                    options: CarouselOptions(
                      height: 375.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      // enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  CarouselSlider(
                    items: List.generate(10, (index) => SwapFile()),
                    // items: [
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    //   SwapFile(),
                    // ],
                    //Slider Container properties
                    options: CarouselOptions(
                      height: 375.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      // enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),

                  //
                  // const SizedBox(height: 25,),
                  //
                  // const Center(
                  //   child: Text("Login Page",style: TextStyle(
                  //     fontFamily: chewy_regular,fontSize: 20,color: white_ffffff
                  //   ),),
                  // ),
                  // const SizedBox(height: 25,),
                  // const Text("Username",style: TextStyle(
                  //   fontFamily: chewy_regular,fontSize: 20,color: white_ffffff
                  // ),),
                  //
                  // Container(
                  //   margin: const EdgeInsets.only(top: 4, right: 24, left: 24),
                  //   padding: const EdgeInsets.symmetric(vertical: 10.5, horizontal: 16),
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: black_121212, width: 1),
                  //       borderRadius: const BorderRadius.all(Radius.circular(8)),
                  //       color: Colors.white),
                  //   child: const TextField(
                  //     style: TextStyle(
                  //         color: black_121212,
                  //         fontFamily: chewy_regular,
                  //         fontSize: 14.0),
                  //     decoration: InputDecoration(
                  //       isDense: true,
                  //       hintText: "Enter User Name",
                  //       hintStyle: TextStyle(
                  //           color: black_121212,
                  //           fontFamily: chewy_regular,
                  //           fontSize: 14.0),
                  //       border: InputBorder.none,
                  //     ),
                  //     keyboardType: TextInputType.text,
                  //     textInputAction: TextInputAction.next,
                  //   ),
                  // ),
                  // const SizedBox(height: 25,),
                  // const Text("Password",style: TextStyle(
                  //   fontFamily: chewy_regular,fontSize: 20,color: white_ffffff
                  // ),),
                  //
                  // Container(
                  //   margin: const EdgeInsets.only(top: 4, right: 24, left: 24),
                  //   padding: const EdgeInsets.symmetric(vertical: 10.5, horizontal: 16),
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: black_121212, width: 1),
                  //       borderRadius: const BorderRadius.all(Radius.circular(8)),
                  //       color: Colors.white),
                  //   child: TextFormField(
                  //     validator: (text) {
                  //       if (text == null || text.isEmpty) {
                  //         return 'Text is empty';
                  //       }
                  //       return null;
                  //     },
                  //     style: TextStyle(
                  //         color: black_121212,
                  //         fontFamily: chewy_regular,
                  //         fontSize: 14.0),
                  //     decoration: InputDecoration(
                  //       // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                  //       isDense: true,
                  //       hintText: "Enter Password",
                  //       hintStyle: TextStyle(
                  //           color: black_121212,
                  //           fontFamily: chewy_regular,
                  //           fontSize: 14.0),
                  //       border: InputBorder.none,
                  //     ),
                  //     keyboardType: TextInputType.text,
                  //     textInputAction: TextInputAction.next,
                  //   ),
                  // ),
                  // Container(
                  //   width: double.infinity,
                  //   margin: const EdgeInsets.only(left: 45,right: 45,top: 15),
                  //   child: ElevatedButton(
                  //       child: const Text("Login",
                  //           style: TextStyle(
                  //               color: Colors.white,fontSize: 18.0,
                  //               fontWeight: FontWeight.w900),
                  //           textAlign: TextAlign.center),
                  //       onPressed: () {},
                  //       style: ElevatedButton.styleFrom(
                  //         primary: black_121212,
                  //         onPrimary: Colors.white,
                  //         elevation: 2.7,
                  //         padding:
                  //         const EdgeInsets.symmetric(horizontal: 0, vertical: 22),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(22),
                  //           side: const BorderSide(color: black_121212, width: 2),
                  //         ),
                  //       )),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
