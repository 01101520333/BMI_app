import 'package:flutter/material.dart';

class WheighAgeWidget extends StatelessWidget {
  WheighAgeWidget({
    super.key,
    required this.wheighAgeText,
    required this.value,
    this.onPressedRemove,
    this.onPressedAdd,
  });
  String wheighAgeText;
  String value;
  void Function()? onPressedRemove;
  void Function()? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Column(
          mainAxisSize: .min,
          children: [
            Text(
              wheighAgeText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: .w300,
                color: Color(0xff8B8C9E),
              ),
            ),
            SizedBox(height: 5),
            Text(
              value,
              style: TextStyle(
                fontSize: 40,
                fontWeight: .bold,
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: onPressedRemove,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: CircleBorder(),
                  child: Icon(Icons.remove, color: Color(0xffFFFFFF)),
                ),

                FloatingActionButton(
                  onPressed: onPressedAdd,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: CircleBorder(),
                  child: Icon(Icons.add, color: Color(0xffFFFFFF)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
