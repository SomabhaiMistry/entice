import 'package:entice/style/my_color.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 25,),

              const Center(
                child: Text("Login Page",style: TextStyle(
                  fontFamily: chewy_regular,fontSize: 20,color: white_ffffff
                ),),
              ),
              const SizedBox(height: 25,),
              const Text("Username",style: TextStyle(
                fontFamily: chewy_regular,fontSize: 20,color: white_ffffff
              ),),

              Container(
                margin: const EdgeInsets.only(top: 4, right: 24, left: 24),
                padding: const EdgeInsets.symmetric(vertical: 10.5, horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: black_121212, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.white),
                child: const TextField(
                  style: TextStyle(
                      color: black_121212,
                      fontFamily: chewy_regular,
                      fontSize: 14.0),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Enter User Name",
                    hintStyle: TextStyle(
                        color: black_121212,
                        fontFamily: chewy_regular,
                        fontSize: 14.0),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(height: 25,),
              const Text("Password",style: TextStyle(
                fontFamily: chewy_regular,fontSize: 20,color: white_ffffff
              ),),

              Container(
                margin: const EdgeInsets.only(top: 4, right: 24, left: 24),
                padding: const EdgeInsets.symmetric(vertical: 10.5, horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: black_121212, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.white),
                child: TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                  style: TextStyle(
                      color: black_121212,
                      fontFamily: chewy_regular,
                      fontSize: 14.0),
                  decoration: InputDecoration(
                    // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    isDense: true,
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                        color: black_121212,
                        fontFamily: chewy_regular,
                        fontSize: 14.0),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 45,right: 45,top: 15),
                child: ElevatedButton(
                    child: const Text("Login",
                        style: TextStyle(
                            color: Colors.white,fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: black_121212,
                      onPrimary: Colors.white,
                      elevation: 2.7,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                        side: const BorderSide(color: black_121212, width: 2),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
