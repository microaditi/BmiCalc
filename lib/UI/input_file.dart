import 'package:bmi_calculator/UI/calculate.dart';
import 'package:bmi_calculator/UI/customButton.dart';
import 'package:bmi_calculator/UI/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'bmicard.dart';
import 'bottom_button.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Color maleCardcolor = incardColor;
//  Color femaleCardcolor = incardColor;
//
  Gender selectedGen;
  int height = 180;
  int weight = 54;
  int age = 19;

//  void updateColor(Gender selectedgender){
//    if(selectedgender==Gender.Male){
//      if(maleCardcolor == incardColor){
//        maleCardcolor = cardColor;
//        femaleCardcolor = incardColor;
//      }else{
//        maleCardcolor = incardColor;
//      }
//    }
//    else if(selectedgender==Gender.Female){
//      if(femaleCardcolor == incardColor){
//        femaleCardcolor = cardColor;
//        maleCardcolor = incardColor;
//      }else{
//        femaleCardcolor = incardColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR',style: TextStyle(fontSize: 25.0),)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          //updateColor(Gender.Male);
                          selectedGen = Gender.Male;
                        });
                      },
                      child: bmiCard(
                        colour: selectedGen == Gender.Male
                            ? kCardColor
                            : kIncardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              " MALE ",
                              style: klabelcard,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // updateColor(Gender.Female);
                          selectedGen = Gender.Female;
                        });
                      },
                      child: bmiCard(
                        colour: selectedGen == Gender.Female
                            ? kCardColor
                            : kIncardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              " FEMALE ",
                              style: klabelcard,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 1,
              child: bmiCard(
                colour: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("HEIGHT ", style: klabelcard),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kcardNum,
                        ),
                        Text(
                          "cm",
                          style: klabelcard,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Colors.grey,
                          trackHeight: 4.0,
                          activeTrackColor: Colors.white,
                          thumbColor: Colors.pinkAccent,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newVal) {
                          setState(() {
                            height = newVal.toInt();
                          });
                        },
                        //activeColor: Colors.pinkAccent,
                        inactiveColor: Colors.grey,
                        min: 100.0,
                        max: 250.0,
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: bmiCard(
                      colour: kCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " WEIGHT ",
                            style: klabelcard,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kcardNum,
                              ),
                              //Text("kg", style: klabelcard,),
                            ],
                          ),
                          SizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                press: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                press: () {
                                  setState(() {
                                    weight = weight - 1;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: bmiCard(
                    colour: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          " AGE ",
                          style: klabelcard,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              age.toString(),
                              style: kcardNum,
                            ),
                            //Text("kg", style: klabelcard,),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                setState(() {
                                  age = age + 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  age = age - 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              )),
          bottomButton(
            onTap: () {
              calculator calc = calculator(weight: weight, height: height);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => results(
                bmiResult: calc.calculateBMI(),
                resultMsg: calc.getMsg() ,
                resultTxt: calc.getResult(),
              )));
            },
            buttonTitle: "CALCULATE YOUR BMI",
          )
        ],
      ),

      // floatingActionButton: Theme(
      //   data: ThemeData(
      //     accentColor: Color(0xFFed4292)
      //   ),
      //         child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}


