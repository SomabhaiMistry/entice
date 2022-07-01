import 'package:entice/SpinWheel/CommonText.dart';
import 'package:entice/style/my_color.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: white_ffffff,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(title: "Rock St@r"),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    // height: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: 25),
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      color: yellow_F7CB46,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: black_121212,
                        borderRadius: BorderRadius.circular(50)
                      ),child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 100,),
                        Text("Vaibahv",style: TextStyle(fontFamily: chewy_regular,color: green_23652F,
                            fontSize: 25),)
                      ],
                    )
                      ,
                    ),
                  ),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
