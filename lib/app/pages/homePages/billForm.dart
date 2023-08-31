import 'package:flutter/material.dart';
import 'package:make_it_easy/app/widgets/common_widgets/widget_button.dart';

import '../../shared/constants.dart';

class BillForm extends StatelessWidget {
  BillForm({super.key});

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
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: 40,
                    color: appTheme,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
