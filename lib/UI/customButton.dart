import 'package:bmi_calculator/UI/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function press;

  RoundIconButton({this.icon, this.press});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, size: 30.0, color: kCardColor, ),
      shape: CircleBorder(),
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        width: 60.0,
        height: 60.0,
      ),
      elevation: 15.0,
      onPressed: press,
    );
  }
}
