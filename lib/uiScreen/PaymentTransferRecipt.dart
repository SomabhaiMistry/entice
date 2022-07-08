import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../SelfTesting/CommonMainFile.dart';
import '../style/my_icon_images.dart';

class PaymentTransferRecipt extends StatefulWidget {
  const PaymentTransferRecipt({Key? key}) : super(key: key);

  @override
  State<PaymentTransferRecipt> createState() => _PaymentTransferReciptState();
}

class _PaymentTransferReciptState extends State<PaymentTransferRecipt> {
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
                          "Game History",
                          style: TextStyle(
                              fontFamily: chewy_regular,
                              color: Colors.white,
                              fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 31.h,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: blue_2FA1C7,
                      borderRadius: BorderRadius.circular(12.r),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
