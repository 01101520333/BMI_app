import 'package:bmi_app/screens/home_screen.dart';
import 'package:bmi_app/screens/resulet_of_calculation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.homeScreenRoute,
      routes: {
        HomeScreen.homeScreenRoute: (context) => HomeScreen(),
        ResuletOfCalculation.resuletOfCalculationRoute: (context) =>
            ResuletOfCalculation(),
      },
    );
  }
}
