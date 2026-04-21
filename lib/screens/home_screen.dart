import 'package:bmi_app/widgets/custom_app_bar_widget.dart';
import 'package:bmi_app/widgets/gender_witget.dart';
import 'package:bmi_app/widgets/wheigh_age_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String homeScreenRoute = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Row(
            children: [
              GenderWitget(
                textType: "Male",
                imagePath: "assets/images/male_image.png",
              ),
              GenderWitget(
                textType: "female",
                imagePath: "assets/images/female_image.png",
              ),
            ],
          ),

          Container(
            decoration: BoxDecoration(
              color: Color(0xff333244),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(27),
            child: Column(
              mainAxisSize: .min,

              children: [
                Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: .bold,
                    color: Color(0xff8B8C9E),
                  ),
                ),

                Text.rich(
                  TextSpan(
                    text: "150",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: .w500,
                      color: Color(0xffFFFFFF),
                    ),
                    children: [
                      TextSpan(
                        text: "cm",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: .w500,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),

                Slider(
                  value: 150,
                  onChanged: (height) {},
                  min: 50,
                  max: 250,
                  activeColor: Color(0xffE83D67),
                  inactiveColor: Color(0xffFFFFFF),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),

          Row(
            children: [
              WheighAgeWidget(wheighAgeText: "Weight", value: "60"),
              WheighAgeWidget(wheighAgeText: "Age", value: "60"),
            ],
          ),
        ],
      ),
    );
  }
}
