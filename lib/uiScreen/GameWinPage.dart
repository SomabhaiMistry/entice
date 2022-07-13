import 'package:entice/SelfTesting/CommonMainFile.dart';
import 'package:entice/style/my_icon_images.dart';
import 'package:entice/style/my_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/my_color.dart';

class GameWinPage extends StatefulWidget {
  const GameWinPage({Key? key}) : super(key: key);

  @override
  State<GameWinPage> createState() => _GameWinPageState();
}

class _GameWinPageState extends State<GameWinPage> {
  String str_NTIC = "100 NTIC";
  String str_RP = "10 RP";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: bg_navy_blue_1c4175,
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              img_backgound,
              // height:450,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Center(child: Image.asset(img_ludo_title_big,fit: BoxFit.fill,width: 257)),
                SizedBox(height: 70,),


                Container(
                  margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              color: yellow_F7CB46,
                            ),
                            SizedBox(height: 5,),
                            CircleAvatar(
                              backgroundColor: white_ffffff,
                              radius: 50,
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(img_india),
                                radius: 47,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Center(
                              child: Text(str_rutvik,style: TextStyle(
                                fontSize: 20,fontFamily: chewy_regular,color: Colors.white
                              ),),
                            ),
                            SizedBox(height: 2,),
                            Center(
                              child: Text("1000",style: TextStyle(
                                fontSize: 20,fontFamily: chewy_regular,color:light_yellow_FFCC33,
                                shadows: <Shadow>[
                                  Shadow(
                                    // offset: Offset(10.0, 10.0),
                                    blurRadius: 4.0,
                                    color: Colors.black,
                                  ),
                                  Shadow(
                                    // offset: Offset(10.0, 10.0),
                                    blurRadius: 4.0,
                                    color: Colors.black,
                                  ),
                                ],
                              ),),
                            ),

                          ],
                        ),
                      ),

                      Center(
                        child: Text("vs",style: TextStyle(
                          fontFamily: chewy_regular,fontSize: 35,color: CupertinoColors.white
                        ),),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              color: yellow_F7CB46,
                            ),
                            SizedBox(height: 5,),
                            CircleAvatar(
                              backgroundColor: white_ffffff,
                              radius: 50,
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(img_india),
                                radius: 47,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Center(
                              child: Text(str_vaibhav,style: TextStyle(
                                fontSize: 20,fontFamily: chewy_regular,color: Colors.white
                              ),),
                            ),
                            SizedBox(height: 2,),
                            Center(
                              child: Text("2000",style: TextStyle(
                                fontSize: 20,fontFamily: chewy_regular,color:light_yellow_FFCC33,
                                shadows: <Shadow>[
                                  Shadow(
                                    // offset: Offset(10.0, 10.0),
                                    blurRadius: 4.0,
                                    color: Colors.black,
                                  ),
                                  Shadow(
                                    // offset: Offset(10.0, 10.0),
                                    blurRadius: 4.0,
                                    color: Colors.black,
                                  ),
                                ],
                              ),),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    decoration: BoxDecoration(
                      color: navy_blue_192a5d,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text("You Win",style: TextStyle(
                          fontSize: 14,color: light_orange_F5A95F
                        ),),
                        SizedBox(height: 8,),

                        Text("$str_NTIC  +  $str_RP",style: TextStyle(
                          fontSize: 25,color: Colors.white,fontFamily: chewy_regular,  shadows: <Shadow>[
                          Shadow(
                            // offset: Offset(10.0, 10.0),
                            blurRadius: 4.0,
                            color: light_yellow_FFCC33,
                          ),
                          Shadow(
                            // offset: Offset(10.0, 10.0),
                            blurRadius: 4.0,
                            color:light_orange_F5A95F,
                          ),
                        ],
                        ),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 30
                      ),
                      child: Text("Go Back",style: TextStyle(
                          fontSize: 27,color: Colors.white,fontFamily: chewy_regular
                      ),
                        textAlign: TextAlign.center,),
                    ),
                  ),
                ),

              ],
            ),


            Image.asset(img_back_star,width: double.infinity,fit: BoxFit.fill,)
          ],
        ),
      ),
    );

  }
}
