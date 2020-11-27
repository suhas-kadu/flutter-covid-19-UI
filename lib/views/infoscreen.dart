import 'package:covid_app_ui/constant.dart';
import 'package:covid_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyHeader(
                imgUrl1: "assets/images/virus.png",
                imgUrl2: "assets/icons/coronadr.svg",
                desc: "Get to know\nAbout Covid-19",
                icon: "assets/icons/menu.svg",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 16),
                child: Text(
                  "Symptoms",
                  style: kTitleTextstyle.copyWith(fontSize: 22),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SymptomWidget(
                      imgUrl: "assets/images/fever.png",
                      title: "      Fever     ",
                    ),
                    SymptomWidget(
                      imgUrl: "assets/images/caugh.png",
                      title: "    Cough     ",
                    ),
                    SymptomWidget(
                      imgUrl: "assets/images/headache.png",
                      title: "Headache",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Prevention",
                  style: kTitleTextstyle.copyWith(fontSize: 22),
                ),
              ),
              PreventCard(
                imgUrl: "assets/images/wear_mask.png",
                textHeader: "Wear mask",
                desc: "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                icon: "assets/icons/forward.svg",
              ),
                            PreventCard(
                imgUrl: "assets/images/wash_hands.png",
                textHeader: "Wash your hands",
                desc: "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                icon: "assets/icons/forward.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

