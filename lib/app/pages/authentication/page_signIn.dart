import 'package:flutter/material.dart';
import 'package:make_it_easy/app/pages/homePages/staffHomePage.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';

import '../../shared/constants.dart';
import '../../widgets/common_widgets/widget_button.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _showPassword = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 180),
              child: Column(
                children: [
                  TextWidget(
                      text: 'Login',
                      fontSize: 37,
                      textColor: Colors.black,
                      isBold: true),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Empty Field' : null,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: appTheme))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _showPassword,
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Empty Field' : null,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            icon: Icon(_showPassword
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: appTheme))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //staff admin selection checkBox

                  //..................
                  ButtonWidget(
                    text: TextWidget(
                        text: 'Login',
                        fontSize: 23,
                        textColor: Colors.white,
                        isBold: true),
                    function: () {
                      if (_formKey.currentState!.validate()) {
                        if (_emailController.text == _passwordController.text) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => StaffHomePage()));
                        }
                      }
                    },
                    buttonBgColor: appTheme,
                    buttonHeight: 55,
                    buttonWidth: 170,
                    buttonBorderColor: appTheme,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
