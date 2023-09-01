import 'package:flutter/material.dart';
import 'package:make_it_easy/app/shared/constants.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';
import 'package:make_it_easy/app/widgets/common_widgets/widget_button.dart';

import '../../widgets/common_widgets/bottomSheetFn.dart';
import 'loginOptions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image
              TextWidget(
                  text: 'AppImage',
                  fontSize: 30,
                  textColor: Colors.white,
                  isBold: true),
              SizedBox(
                height: 8,
              ),
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
                function: () => ShowBottomSheet(context, const LoginOptions()),
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
