import 'package:flutter/material.dart';

class bmiCard extends StatelessWidget {
//  const bmiCard({
//    Key key,
//  }) : super(key: key);

  final Color colour;
  final Widget cardChild;

  bmiCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
