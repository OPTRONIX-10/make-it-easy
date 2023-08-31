import 'package:flutter/material.dart';
import 'package:make_it_easy/app/pages/authentication/page_signUp.dart';
import 'package:make_it_easy/app/pages/homePages/staffHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StaffHomePage(),
    );
  }
}
