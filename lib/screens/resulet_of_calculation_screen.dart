import 'package:bmi_app/data/user_data.dart';
import 'package:bmi_app/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class ResuletOfCalculationScreen extends StatelessWidget {
  const ResuletOfCalculationScreen({super.key, required this.userData});
  static const String resuletOfCalculationRoute = "ResuletOfCalculation";
  final UserData userData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 26,
          children: [
            Text(
              "Your Resulte",
              style: TextStyle(
                fontSize: 40,
                fontWeight: .bold,
                color: Color(0xffFFFFFF),
              ),
            ),

            Container(
              padding: EdgeInsets.all(33),
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    userData.resultBmi,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: .bold,
                      color: userData.categoryColor,
                    ),
                  ),
                  SizedBox(height: 26),
                  Text(
                    userData.calculateBmi.toString(),
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: .bold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    userData.healthAdvice,
                    textAlign: .center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w500,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                  SizedBox(height: 170),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 30),
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: Color(0xffE83D67),
        child: Text(
          "Re-Calculate",
          style: TextStyle(
            fontSize: 32,
            fontWeight: .w600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
