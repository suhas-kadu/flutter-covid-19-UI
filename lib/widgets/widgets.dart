import 'package:covid_app_ui/views/infoscreen.dart';
import 'package:flutter/material.dart';
import 'package:covid_app_ui/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHeader extends StatefulWidget {
  final String imgUrl1;
  final String imgUrl2;
  final String desc;
  final String icon;
  const MyHeader({
    Key key,
    this.imgUrl1,
    this.imgUrl2,
    this.desc,
    this.icon,
  }) : super(key: key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [kPrimaryColor, kIndigoColor]),
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage(widget.imgUrl1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context, ) {
                  return InfoScreen();
                }));
              },
              child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(widget.icon)),
            ),
            
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    widget.imgUrl2,
                    fit: BoxFit.cover,
                    width: 230,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                      top: 30,
                      left: 170,
                      child: Text(
                        widget.desc,
                        style: kHeadingTextStyle.copyWith(color: Colors.white),
                      )),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  } 

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


class PreventCard extends StatelessWidget {
  final String imgUrl;
  final String icon;
  final String textHeader;
  final String desc;
  const PreventCard({
    Key key,
    this.desc,
    this.icon,
    this.imgUrl,
    this.textHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(                
                //margin: EdgeInsets.symmetric(horizontal: 20),
                height: 150,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    //shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 8),
                          color: kShadowColor,
                          blurRadius: 40,
                          //spreadRadius: 100.0
                          )
                    ]),
              ),
              Image.asset(
                imgUrl,
                fit: BoxFit.contain,
              ),
              Positioned(
                //top: 30,
                left: 150,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  height: 150,
                  width: MediaQuery.of(context).size.width - 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textHeader,
                        style: kTitleTextstyle,
                      ),
                      Expanded(
                        child: Text(
                          desc,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: SvgPicture.asset(icon)),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class SymptomWidget extends StatefulWidget {
  final String imgUrl;
  final String title;
  const SymptomWidget({
    Key key,
    this.imgUrl,
    this.title,
  }) : super(key: key);

  @override
  _SymptomWidgetState createState() => _SymptomWidgetState();
}

class _SymptomWidgetState extends State<SymptomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(horizontal: 20),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(offset: Offset(0, 2), color: kShadowColor, blurRadius: 50)
          ]),
      child: Column(
        children: [
          Image.asset(
            widget.imgUrl,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: kSubTextStyle.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
