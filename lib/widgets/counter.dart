import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_app_ui/constant.dart';

class Counter extends StatelessWidget {
  final String numbers;
  final String player;
  final Color color;

  const Counter({Key key, this.color, this.numbers, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
    Container(
      height: 25,
      width: 25,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.2),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: kInfectedColor,
              width: 3,
            )),
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text("${numbers}",
        style:
            kTitleTextstyle.copyWith(color: color, fontSize: 40)),
    SizedBox(
      height: 5,
    ),
    Text("Deaths",
        style:
            kTitleTextstyle.copyWith(color: kInfectedColor, fontSize: 20))
        ],
      );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
