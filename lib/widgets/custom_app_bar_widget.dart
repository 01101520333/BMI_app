import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "BMI Calculator",
        style: TextStyle(
          fontSize: 20,
          fontWeight: .w600,
          color: Color(0xffFFFFFF),
        ),
      ),
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
      elevation: 50,
      toolbarHeight: 50,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
