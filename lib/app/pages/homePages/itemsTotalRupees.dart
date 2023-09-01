import 'package:flutter/material.dart';
import 'package:make_it_easy/app/pages/homePages/addedItemsList.dart';
import 'package:make_it_easy/app/shared/constants.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';

class GrandTotal extends StatelessWidget {
  const GrandTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWidget(
        text: '${itemGrandTotal.lastOrNull.toString()}/-',
        fontSize: 20,
        textColor: appTheme,
        isBold: true);
  }
}

// int _itemSum() {
//   int sum = 0;
//   itemGrandTotal.forEach((element) {
//     sum += element;
//   });
//   return sum;
// }
