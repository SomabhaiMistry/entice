import 'package:entice/style/my_color.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [


              ElevatedButton(onPressed: (){
                Fluttertoast.showToast(msg: "This is a Toast",toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: pink_FE685D,
                textColor: white_ffffff,
                fontSize: 15);
              }, child: Text("Set Toast")),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text(
                    'tjhis is Contain'
                  ),action: SnackBarAction(
                    label: 'ok',onPressed: (){
                      print('on press working');
                  },
                  ),

                ));
              }, child: Text("Set Snakbar")),

            ],
          )
        ),
      ),
    );
  }
}
