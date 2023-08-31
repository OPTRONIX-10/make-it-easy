import 'package:flutter/material.dart';
import 'package:make_it_easy/app/pages/homePages/addedItemsList.dart';

class GrandTotal extends StatelessWidget {
  const GrandTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(_itemSum().toString());
  }
}

int _itemSum() {
  int sum = 0;
  itemGrandTotal.forEach((element) {
    sum += element;
  });
  return sum;
}
