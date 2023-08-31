import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  double? fontSize;
  Color? textColor;
  bool isBold;

  TextWidget(
      {required this.text,
      required this.fontSize,
      required this.textColor,
      required this.isBold});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
