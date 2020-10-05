import 'package:flutter/material.dart';
import 'constants.dart';
class bottomButton extends StatelessWidget {

  bottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomColor,
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}