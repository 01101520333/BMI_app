import 'package:flutter/material.dart';

class GenderWitget extends StatelessWidget {
  const GenderWitget({
    super.key,
    required this.textType,
    required this.imagePath,
    required this.onTap,
    required this.color,
  });
  final String textType;
  final String imagePath;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
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
      ),
    );
  }
}
