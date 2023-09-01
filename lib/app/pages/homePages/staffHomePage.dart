import 'package:flutter/material.dart';
import 'package:make_it_easy/app/shared/constants.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';

import 'billForm.dart';

class StaffHomePage extends StatefulWidget {
  const StaffHomePage({
    super.key,
  });

  @override
  State<StaffHomePage> createState() => _HomePageState();
}

TextEditingController _nameController = TextEditingController();
TextEditingController _contactController = TextEditingController();

class _HomePageState extends State<StaffHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User@1234',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: appTheme,
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'LogOut',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  text: 'Billing',
                  fontSize: 35,
                  textColor: Colors.black,
                  isBold: true),
              TextWidget(
                  text: 'Name:',
                  fontSize: 15,
                  textColor: Colors.grey,
                  isBold: true),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTheme)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    fillColor: Colors.grey[300],
                    filled: true),
              ),
              SizedBox(
                height: 35,
              ),
              TextWidget(
                  text: 'Contact:',
                  fontSize: 15,
                  textColor: Colors.grey,
                  isBold: true),
              TextFormField(
                controller: _contactController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTheme)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    fillColor: Colors.grey[300],
                    filled: true),
              ),
              SizedBox(
                height: 35,
              ),
              TextWidget(
                  text: 'Bill Details:',
                  fontSize: 15,
                  textColor: Colors.grey,
                  isBold: true),
              BillForm()
            ],
          ),
        ),
      ),
    );
  }
}
