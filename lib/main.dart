import 'package:flutter/material.dart';

import 'UI/input_file.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0F101D),
       // scaffoldBackgroundColor: Color(0xFF0F101D),
      ),
      home: InputPage(),
    );
  }
}
