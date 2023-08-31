import 'package:flutter/material.dart';
import 'package:make_it_easy/app/shared/constants.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';
import 'package:make_it_easy/app/widgets/common_widgets/widget_button.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextWidget(
            text: 'Login or Register',
            fontSize: 37,
            textColor: Colors.black,
            isBold: true),
        SizedBox(
          height: 30,
        ),
        ButtonWidget(
          text: TextWidget(
              text: 'Login as Staff',
              fontSize: 23,
              textColor: Colors.white,
              isBold: true),
          function: () {},
          buttonBgColor: appTheme,
          buttonHeight: 50,
          buttonWidth: 250,
          buttonBorderColor: appTheme,
        ),
        SizedBox(
          height: 15,
        ),
        ButtonWidget(
          text: TextWidget(
              text: 'Login as Admin',
              fontSize: 23,
              textColor: appTheme,
              isBold: true),
          function: () {},
          buttonBgColor: Colors.white,
          buttonHeight: 50,
          buttonWidth: 250,
          buttonBorderColor: appTheme,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
                text: "Don't have an account?",
                fontSize: 16,
                textColor: null,
                isBold: true),
            TextButton(
                onPressed: () {},
                child: TextWidget(
                    text: 'Register',
                    fontSize: 16,
                    textColor: appTheme,
                    isBold: true))
          ],
        )
      ],
    ));
  }
}
