// 1. Weight Values:
//  100 → Thin
//  200 → ExtraLight
//  300 → Light
//  400 → Regular (Normal)
//  500 → Medium
//  600 → SemiBold
//  700 → Bold
//  800 → ExtraBold
//  900 → Black
// 2. Style:
//  If the font file has an italic version, use style: italic.
// 3. Organization:
//  Fonts are grouped by family: Lato and Poppins.
//  Each weight and style has its corresponding file.

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String fontFamily;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 14, // Default font size
    this.fontWeight = FontWeight.normal, // Default weight
    this.color = Colors.black, // Default color
    this.fontFamily = "Lato", // Default font family
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}