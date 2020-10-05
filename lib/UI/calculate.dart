import 'dart:math';

class calculator{
  calculator({this.weight, this.height});

  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'OverWeight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'UnderWeight';
    }
  }

  String getMsg(){
    if(_bmi>=25){
      return 'Your weight is higher than normal, try and do some excerise :)';
    }else if(_bmi>18.5){
      return 'Your weight is normal, stay fit and healthy :)';
    }else{
      return 'Your weight is less than normal, try and eat more but healthy food :) ';
    }

  }

}