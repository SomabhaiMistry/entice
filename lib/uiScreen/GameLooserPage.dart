import 'package:entice/SelfTesting/CommonMainFile.dart';
import 'package:flutter/material.dart';

import '../style/my_color.dart';
import '../style/my_icon_images.dart';

class GameLooserPage extends StatefulWidget {
  const GameLooserPage({Key? key}) : super(key: key);

  @override
  State<GameLooserPage> createState() => _GameLooserPageState();
}

class _GameLooserPageState extends State<GameLooserPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bg_navy_blue_1c4175,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height:130),
            Center(child: Image.asset(img_game_looser_title)),
            SizedBox(height: 25),
            Center(
              child: Text("Sorry\nYou loose this game,\nBetter Luck Next Time",style: TextStyle(
                fontSize: 25,color: Colors.white,fontFamily: chewy_regular,

              ),
              textAlign: TextAlign.center,),
            ),
            // SizedBox(height: 50,),


            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 425 ,
                  child:Stack(
                    children: [
                      Image.asset(img_back_star,fit: BoxFit.fill,width: double.infinity,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(img_winning_price_rect),
                                Text("8 RP",style: TextStyle(
                                    fontFamily: chewy_regular,fontSize: 26,color: pink_FF8787
                                ),)
                              ],),
                          ),

                          SizedBox(height: 12,),

                          Center(
                            child: Text(
                              "opps!..You Loss 8 game points.",
                              style: TextStyle(
                                color:pink_FF8787,
                                // fontFamily: chewy_regular,
                                fontSize: 16,
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
                              ),
                              textAlign: TextAlign.center,
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
                    ],
                  )
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
