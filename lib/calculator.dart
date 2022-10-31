
import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator{
  final int? height;
  final int? weight;
  double _bmi = 0;

  Calculator({@required this.height, @required this.weight});

  String calculateBMI(){
    _bmi = weight! / pow(height!/100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getInterpretation(){
    if(_bmi >= 30) {
      return 'You are obese';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more. ';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  String getResult(){
    if(_bmi >= 30){
      return 'Obese';
    } else if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }


}