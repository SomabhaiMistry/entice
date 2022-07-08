import 'package:entice/style/my_color.dart';
import 'package:entice/utilites/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/my_icon_images.dart';

class StoreCart extends StatefulWidget {
  const StoreCart({Key? key}) : super(key: key);

  @override
  _StoreCartState createState() => _StoreCartState();
}

class _StoreCartState extends State<StoreCart> {
  final List<League> data = <League>[
    League(
      img_afghanistan,
      'Fruit',
      <Club>[
        Club("Fresh Fruit (10)"),
        Club("Exotic Fruit (55)"),
        Club("Seasonal Fruit (22)"),
      ],
    ),
    // League(
    //   img_afghanistan,
    //   'Vegetable',
    //   <Club>[
    //     Club("Fresh Fruit (10)"),
    //     Club("Exotic Fruit (55)"),
    //     Club("Seasonal Fruit (22)"),
    //   ],
    // ),
    // League(
    //   img_afghanistan,
    //   'Dry Fruits, Nuts & Seeds',
    //   <Club>[
    //     Club("Fresh Fruit (10)"),
    //     Club("Exotic Fruit (55)"),
    //     Club("Seasonal Fruit (22)"),
    //   ],
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    String foos = 'One';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    MyExpandableWidget(data[index]),
                itemCount: data.length,
              ),




          // ExpansionTile(
          //     title: new Text(this.foos),
          //     backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
          //     children: <Widget>[
          //       new ListTile(
          //         title: const Text('One'),
          //         onTap: () {
          //           setState(() {
          //             this.foos = 'One';
          //           });
          //         },
          //       ),
          //       new ListTile(
          //         title: const Text('Two'),
          //         onTap: () {
          //           setState(() {
          //             this.foos = 'Two';
          //           });
          //         },
          //       ),
          //       new ListTile(
          //         title: const Text('Three'),
          //         onTap: () {
          //           setState(() {
          //             this.foos = 'Three';
          //           });
          //         },
          //       ),
          //     ]
          // ),

            ],
          ),
        ),
      ),
    );
  }
}

class MyExpandableWidget extends StatelessWidget {
  final League league;
  MyExpandableWidget(this.league);

  @override
  Widget build(BuildContext context) {
    if (league.listClubs.isEmpty)
      return ListTile(
          leading: Image.asset(league.ImgCategori),
          title: Text(league.TvTitle));
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: yellow_F7CB46,
              borderRadius: BorderRadius.circular(12)
            ),
            child: ExpansionTile(
              key: PageStorageKey<League>(league),
              // leading:
              // Container(
              //   margin: EdgeInsets.only(left: 8),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(6),
              //     child: Image.asset(
              //       league.ImgCategori,
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),

              /*--------  Top Title  ----------*/
              title: Text(league.TvTitle,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: chewy_regular,
                      color: pink_FF3434)),
              children: league.listClubs
                  .map<Widget>((club) => showClubs(club)).toList(),
            ),
          ),
          // Divider(
          //   color: pink_FF3434,
          //   // height: 15,
          //   thickness: 1,
          //   indent: 24,
          //   endIndent: 24,
          // ),
        ],
      ),
    );
  }
}

showClubs(Club club) {
  return Container(
    margin: EdgeInsets.only(bottom: 0, left: 24, right: 24, top: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("VAibhav",style: TextStyle(fontFamily: chewy_regular,color: black_121212,fontSize: 30.sp),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              club.tvCategories,
              style: TextStyle(
                  fontSize: 14, fontFamily: chewy_regular, color: black_121212),
            ),
            SvgPicture.asset(
              icon_music,
              height: 12,
              width: 12,
            )
          ],
        ),
      ],
    ),
  );
}

class League {
  String ImgCategori, TvTitle;
  List<Club> listClubs;

  League(this.ImgCategori, this.TvTitle, this.listClubs);
}

class Club {
  String tvCategories;

  Club(this.tvCategories);
}
