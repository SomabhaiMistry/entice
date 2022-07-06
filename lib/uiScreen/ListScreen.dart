import 'package:entice/SpinWheel/ReferAndEarn.dart';
import 'package:entice/SpinWheel/SimplePage1.dart';
import 'package:entice/four_in_a_row/Page1.dart';
import 'package:entice/four_in_a_row/Popup1.dart';
import 'package:entice/four_in_a_row/Popup3.dart';
import 'package:entice/uiScreen/Demo.dart';
import 'package:entice/uiScreen/Mining.dart';
import 'package:entice/uiScreen/NoDataFound.dart';
import 'package:entice/uiScreen/NotificationList.dart';
import 'package:entice/uiScreen/Reward.dart';
import 'package:entice/uiScreen/Setting.dart';
import 'package:entice/uiScreen/Test1.dart';
import 'package:entice/uiScreen/UnderMaintinance.dart';
import 'package:entice/uiScreen/UpdatePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../four_in_a_row/Popup2.dart';
import '../style/my_color.dart';
import '../utilites/Constant.dart';
import 'AddNewFriend.dart';
import 'ChooseAvatar.dart';
import 'ChooseCountryCode.dart';
import 'CoinPlayerSelection.dart';
import 'CoinPlayerSelectionOnline.dart';
import 'CreateFourPlayerSelect.dart';
import 'CreateFourPlayerSelectOnline.dart';
import 'CreateNewAccount.dart';
import 'CreateRoom.dart';
import 'CreateRoomOnline.dart';
import 'Deposit.dart';
import 'FriendSearch.dart';
import 'GameModeSelect.dart';
import 'HomePage.dart';
import 'LoginScreen.dart';
import 'MobileVerification.dart';
import 'MyBadgeAndBenefits.dart';
import 'PlayWithFriend.dart';
import 'PlaywithFriendFourPlayer.dart';
import 'PlaywithFriendFourPlayerOnline.dart';
import 'PlaywithFriendOnline.dart';
import 'PlaywithFriendPlayer.dart';
import 'Profile.dart';
import 'RulesPage.dart';
import 'SplashScreen.dart';
import 'Wallet.dart';
import 'WelCome.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: white_ffffff,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*---------- 1st part --------*/
                Center(
                  child: Text("1st Part",style: TextStyle(
                    color: Colors.black,fontSize: 15.sp,fontFamily: chewy_regular
                  ),),
                ),
                /*SplashScreen*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "1.SplashScreen Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),


                /*LoginScreen*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "2.LoginScreen Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                // /*ChooseCountryCode*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseCountryCode(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "3.ChooseCountryCode Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                // /*CreateNewAccount*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateNewAccount(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "4.CreateNewAccount Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                // /*MobileVerification*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MobileVerification(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "5.MobileVerification Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                // /*WelCome*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelCome(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "6.WelCome Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),

                /*---------- 2nd part --------*/
                Center(
                  child: Text("2nd Part",style: TextStyle(
                      color: Colors.black,fontSize: 15.sp,fontFamily: chewy_regular
                  ),),
                ),
                /*HomePage*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "7.HomePage Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*Wallet*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Wallet(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "8.Wallet Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*Deposit*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Deposit(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "9.Deposit Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),

                /*---------- 3rd part --------*/
                Center(
                  child: Text("3rd Part",style: TextStyle(
                      color: Colors.black,fontSize: 15.sp,fontFamily: chewy_regular
                  ),),
                ),
                /*PlayWithFriend*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlayWithFriend(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "10.PlayWithFriend Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*CreateRoom*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateRoom(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "11.CreateRoom Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*CreateFourPlayerSelect*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateFourPlayerSelect(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "12.CreateFourPlayerSelect Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*CoinPlayerSelection*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoinPlayerSelection(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "13.CoinPlayerSelection Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*PlaywithFriendPlayer*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaywithFriendPlayer(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "14.PlaywithFriendPlayer Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*PlaywithFriendFourPlayer*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaywithFriendFourPlayer(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "15.PlaywithFriendFourPlayer Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),


                /*-------- 4th part --------*/
                Center(
                  child: Text("4th Part",style: TextStyle(
                      color: Colors.black,fontSize: 15.sp,fontFamily: chewy_regular
                  ),),
                ),
                /*CreateRoomOnline*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateRoomOnline(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "16.CreateRoomOnline Screen  Position",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*RulesPage*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RulesPage(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "17.RulesPage Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*CreateFourPlayerSelectOnline*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateFourPlayerSelectOnline(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "18.CreateFourPlayerSelectOnline Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*CoinPlayerSelectionOnline*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoinPlayerSelectionOnline(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "19.CoinPlayerSelectionOnline Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*PlaywithFriendOnline*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaywithFriendOnline(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "20.PlaywithFriendOnline Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*PlaywithFriendFourPlayerOnline*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaywithFriendFourPlayerOnline(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "21.PlaywithFriendFourPlayerOnline Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*GameModeSelect*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameModeSelect(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "22.GameModeSelect Screen Position",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*AddNewFriend*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddNewFriend(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "23.AddNewFriend Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*FriendSearch*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FriendSearch(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "24.FriendSearch Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*Profile*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "25.Profile Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                /*ChooseAvatar*/
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseAvatar(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "26.ChooseAvatar Screen",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Demo(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Demo Position",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                ///////////////////////////////////////////////////////////////////
                Center(
                  child: Text("-------- New Screen--------",style: TextStyle(
                    fontSize: 20,fontFamily: chewy_regular,color: black_121212
                  ),),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReferAndEarn(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "ReferAndEarn Position",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page1(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Four in a row",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SimplePage1(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Spin Wheel",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Popup1(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Popup1",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Popup2(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Popup2",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Popup3(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Popup3",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Reward(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Reward",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mining(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Mining",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Setting(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Setting",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationList(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "NotificationList",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoDataFound(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "NoDataFound",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UnderMaintinance(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "UnderMaintinance",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UpdatePage(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "UpdatePage",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyBadgeAndBenefits(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "MyBadgeAndBenefits",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Test1(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Test1",
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: helveticaNeueNeue_medium,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}