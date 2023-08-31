import 'package:flutter/material.dart';
import 'package:make_it_easy/app/shared/constants.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';
import 'package:make_it_easy/app/widgets/common_widgets/widget_button.dart';

import 'loginOptions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void _showBottomSheet() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 60),
              child: LoginOptions(),
            );
          });
    }

    return Scaffold(
      backgroundColor: appTheme,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image

              //appname
              TextWidget(
                  text: 'AppName',
                  fontSize: 30,
                  textColor: Colors.white,
                  isBold: true),
              SizedBox(
                height: 8,
              ),
              //tagLine
              TextWidget(
                  text: 'Make It Easy Now!!',
                  fontSize: 25,
                  textColor: Colors.white,
                  isBold: true),
              verticalSpace,
              //Button
              ButtonWidget(
                text: TextWidget(
                    text: 'Welcome',
                    fontSize: 17,
                    textColor: Colors.black,
                    isBold: true),
                function: _showBottomSheet,
                textColor: Colors.black,
                buttonBgColor: Colors.white,
                buttonHeight: 50,
                buttonWidth: 130,
                buttonBorderColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
