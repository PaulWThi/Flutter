import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getTips() {
    if (_bmi >= 25) {
      return 'You\'re at risk for diabeetus! We suggest cardio and more fruits/veggies!';
    } else if (_bmi > 18.5) {
      return 'You\re fine. Keep up the good work!';
    } else {
      return 'You\re too underweight. You should eat more!';
    }
  }
}
