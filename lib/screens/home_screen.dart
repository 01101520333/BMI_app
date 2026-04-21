import 'package:bmi_app/data/user_data.dart';
import 'package:bmi_app/screens/resulet_of_calculation_screen.dart';
import 'package:bmi_app/widgets/custom_app_bar_widget.dart';
import 'package:bmi_app/widgets/gender_witget.dart';
import 'package:bmi_app/widgets/wheigh_age_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key}) {
    gender = "Male";
    heitgh = 150;
    weight = 80;
    age = 23;
  }
  static const String homeScreenRoute = "HomeScreen";

  late String gender;
  late double heitgh;
  late double weight;
  late int age;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 25,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  GenderWitget(
                    textType: "Male",
                    imagePath: "assets/images/male_image.png",
                    onTap: () {
                      widget.gender = "Male";
                      setState(() {});
                    },
                    color: widget.gender == "Male"
                        ? Color(0xff333244)
                        : Color(0xff24263B),
                  ),
                  GenderWitget(
                    textType: "female",
                    imagePath: "assets/images/female_image.png",
                    onTap: () {
                      widget.gender = "female";
                      setState(() {});
                    },
                    color: widget.gender == "female"
                        ? Color(0xff333244)
                        : Color(0xff24263B),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
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
                        text: widget.heitgh.roundToDouble().toString(),
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
                      value: widget.heitgh,
                      onChanged: (height) {
                        widget.heitgh = height;
                        setState(() {});
                      },
                      min: 50,
                      max: 250,
                      activeColor: Color(0xffE83D67),
                      inactiveColor: Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  WheighAgeWidget(
                    wheighAgeText: "Weight",
                    value: widget.weight.round().toString(),
                    onPressedAdd: () {
                      widget.weight++;
                      setState(() {});
                    },
                    onPressedRemove: () {
                      widget.weight--;
                      setState(() {});
                    },
                    heroTag1: 1,
                    heroTag2: 2,
                  ),
                  WheighAgeWidget(
                    wheighAgeText: "Age",
                    value: widget.age.round().toString(),
                    onPressedAdd: () {
                      widget.age++;
                      setState(() {});
                    },
                    onPressedRemove: () {
                      widget.age--;
                      setState(() {});
                    },
                    heroTag1: 3,
                    heroTag2: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 30),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ResuletOfCalculationScreen(
                userData: UserData(
                  gender: widget.gender,
                  heitgh: widget.heitgh,
                  weight: widget.weight,
                  age: widget.age,
                ),
              ),
            ),
          );
        },
        color: Color(0xffE83D67),
        child: Text(
          "Calculate",
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
