import 'package:bmi_calculator/UI/bmicard.dart';
import 'package:bmi_calculator/UI/bottom_button.dart';
import 'package:bmi_calculator/UI/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class results extends StatelessWidget {

  results({@required this.bmiResult,@required this.resultMsg,@required this.resultTxt});
  final String bmiResult;
  final String resultTxt;
  final String resultMsg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR",style: TextStyle(fontSize: 25.0),)),
      ),
      //backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                "Your Result",
                style: kTitleTextStyle,
          ),
              ),
            ),
            Expanded(
                flex: 5,
                child:bmiCard(
                    colour: kCardColor,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(resultTxt, style: kResultText,),
                        Text(bmiResult, style: kBmiText,),
                        Text(resultMsg,
                          textAlign: TextAlign.center,
                          style: kbodyText,)
                      ],
                    ),
                  ),
                )
            ),
            bottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: "Re-Calculate BMI",
            )

        ]
        ),
      ),
    );
  }
}
