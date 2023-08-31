import 'package:flutter/material.dart';
import 'package:make_it_easy/app/pages/homePages/itemsTotalRupees.dart';
import 'package:make_it_easy/app/widgets/common_widgets/widget_button.dart';
import 'package:make_it_easy/models/itemModel.dart';

import '../../shared/constants.dart';
import '../../widgets/common_widgets/text_widget.dart';
import 'addedItemsList.dart';

class BillForm extends StatefulWidget {
  BillForm({super.key});

  @override
  State<BillForm> createState() => _BillFormState();
}

class _BillFormState extends State<BillForm> {
  TextEditingController _itemController = TextEditingController();

  TextEditingController _weigthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                      controller: _itemController,
                      decoration: InputDecoration(
                          hintText: 'Item',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appTheme)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.grey[300],
                          filled: true))),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: TextFormField(
                      controller: _weigthController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Kg',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appTheme)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.grey[300],
                          filled: true))),
              IconButton(
                  onPressed: () {
                    int weight = int.parse(_weigthController.text);
                    final value = ItemModel(
                        itemName: _itemController.text,
                        weight: weight,
                        perKg: 200);
                    print(value);
                    itemListNotifier.value.add(value);

                    itemListNotifier.notifyListeners();
                  },
                  icon: Icon(
                    Icons.add,
                    size: 40,
                    color: appTheme,
                  )),
            ],
          ),
          AddedItemsList(),
          Row(
            children: [
              TextWidget(
                  text: 'Grand Total:',
                  fontSize: 15,
                  textColor: Colors.grey,
                  isBold: true),
              GrandTotal()
            ],
          ),
        ],
      ),
    );
  }
}
