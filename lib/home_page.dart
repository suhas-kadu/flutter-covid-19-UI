import 'package:covid_app_ui/constant.dart';
import 'package:covid_app_ui/widgets/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_app_ui/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          MyHeader(
            icon: "assets/icons/menu.svg",
            imgUrl2: "assets/icons/Drcorona.svg",
            desc: "All you need to do \nis Stay at home",
            imgUrl1: "assets/images/virus.png",
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 30,
                    color: kShadowColor,
                  )
                ]),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: DropdownButton(
                    value: "India",
                    isExpanded: true,
                    underline: SizedBox(
                      height: 10,
                    ),
                    icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                    items: ["India", "USA", "Germany"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  "Case Update",
                  style: kTitleTextstyle.copyWith(fontSize: 22),
                ),
                Spacer(),
                Text("See Details",
                    style: kTitleTextstyle.copyWith(
                        color: Colors.blue, fontSize: 16)),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Newest Update November 28",
                  style: kSubTextStyle.copyWith(fontSize: 12),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 30,
                    color: kShadowColor,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Counter(
                  numbers: "1140",
                  color: kInfectedColor,
                  player: "Infected",
                ),
                Counter(
                  numbers: "140",
                  color: kDeathColor,
                  player: "Deaths",
                ),
                Counter(
                  numbers: "200",
                  color: kRecovercolor,
                  player: "Recovered",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  "Spread of Virus",
                  style: kTitleTextstyle.copyWith(fontSize: 22),
                ),
                Spacer(),
                Text(
                  "See details",
                  style: kTitleTextstyle.copyWith(
                      color: Colors.blue, fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      color: kShadowColor,
                      blurRadius: 10)
                ]),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              "assets/images/map.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
