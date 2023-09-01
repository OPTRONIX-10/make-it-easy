import 'package:flutter/material.dart';
import 'package:make_it_easy/app/pages/homePages/itemsTotalRupees.dart';
import 'package:make_it_easy/app/pages/homePages/staffHomePage.dart';
import 'package:make_it_easy/app/widgets/common_widgets/bottomSheetFn.dart';
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
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                        controller: _itemController,
                        validator: (value) => value == null || value.isEmpty
                            ? 'Empty Field'
                            : null,
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
                        validator: (value) => value == null || value.isEmpty
                            ? 'Empty Field'
                            : null,
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
                      if (_formkey.currentState!.validate()) {
                        int weight = int.parse(_weigthController.text);
                        final value = ItemModel(
                            itemName: _itemController.text,
                            weight: weight,
                            perKg: 200);
                        itemListNotifier.value.add(value);
                        itemListNotifier.notifyListeners();
                        setState(() {
                          GrandTotal();
                        });
                      }
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
            ButtonWidget(
                text: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                function: () {
                  ShowBottomSheet(context, PaymentButtons);
                },
                buttonBgColor: appTheme,
                buttonWidth: 100,
                buttonHeight: 45,
                buttonBorderColor: appTheme),
          ],
        ),
      ),
    );
  }
}

Widget PaymentButtons = Column(
  children: [
    ButtonWidget(
      text: TextWidget(
          text: 'Online Payment',
          fontSize: 23,
          textColor: Colors.white,
          isBold: true),
      function: () {},
      buttonBgColor: appTheme,
      buttonHeight: 50,
      buttonWidth: 300,
      buttonBorderColor: appTheme,
    ),
    SizedBox(
      height: 15,
    ),
    ButtonWidget(
      text: TextWidget(
          text: 'Cash Payment',
          fontSize: 23,
          textColor: appTheme,
          isBold: true),
      function: () {},
      buttonBgColor: Colors.white,
      buttonHeight: 50,
      buttonWidth: 300,
      buttonBorderColor: appTheme,
    ),
  ],
);
