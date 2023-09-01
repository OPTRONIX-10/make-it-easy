import 'package:flutter/material.dart';

void ShowBottomSheet(BuildContext context, Widget widget) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 60),
          child: widget,
        );
      });
}
