import 'package:flutter/material.dart';

class GenderWitget extends StatelessWidget {
  const GenderWitget({
    super.key,
    required this.textType,
    required this.imagePath,
  });
  final String textType;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff24263B),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Image.asset(imagePath),
            Text(
              textType,
              style: TextStyle(
                fontSize: 20,
                fontWeight: .w500,
                color: Color(0xff888C9E),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
