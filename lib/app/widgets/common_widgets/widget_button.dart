import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget? text;
  final VoidCallback function;
  final Color? buttonBgColor;
  final Color buttonBorderColor;
  final double? buttonHeight;
  final double? buttonWidth;
  const ButtonWidget(
      {super.key,
      required this.text,
      required this.function,
      required this.buttonBgColor,
      required this.buttonWidth,
      required this.buttonHeight,
      required this.buttonBorderColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: function,
        child: text,
        style: ButtonStyle(
          side: MaterialStatePropertyAll(BorderSide(color: buttonBorderColor)),
          backgroundColor: MaterialStatePropertyAll(buttonBgColor),
        ),
      ),
    );
  }
}
