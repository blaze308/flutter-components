import 'package:flutter/material.dart';

class AppColors {
  Color mainColor = const Color(0xffFFFFFF);
  Color black = Colors.black;
  Shader textGradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xffF17B7B),
        Color(0xffD42222),
      ]).createShader(Rect.fromLTWH(0, 0.0, 0.0, 70.0));
}
