// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class UserData {
  UserData({
    required this.gender,
    required this.heitgh,
    required this.weight,
    required this.age,
  });
  String gender;
  double heitgh;
  double weight;
  int age;

  double get calculateBmi => (weight / pow(heitgh / 100, 2)).roundToDouble();

  String get resultBmi {
    if (calculateBmi < 18.5) {
      return 'Underweight';
    } else if (calculateBmi < 25) {
      return 'Normal';
    } else if (calculateBmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color get categoryColor {
    switch (resultBmi) {
      case 'Underweight':
        return const Color(0xFF3F51B5);
      case 'Normal':
        return const Color(0xFF4CAF50);
      case 'Overweight':
        return const Color(0xFFFF9800);
      case 'Obese':
        return const Color(0xFFF44336);
      default:
        return const Color(0xFF9E9E9E);
    }
  }

  String get healthAdvice {
    switch (resultBmi) {
      case 'Underweight':
        return 'Consider consulting a healthcare provider about healthy weight gain strategies.';
      case 'Normal':
        return 'Great! Maintain your current lifestyle with balanced diet and regular exercise.';
      case 'Overweight':
        return 'Consider a balanced diet and increased physical activity to reach a healthier weight.';
      case 'Obese':
        return 'Consult with a healthcare provider for a personalized weight management plan.';
      default:
        return 'Consult with a healthcare provider for personalized advice.';
    }
  }
}
