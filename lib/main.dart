import 'package:flutter/material.dart';
import 'package:shop_app/onBoarding/OnBoardingScreen.dart';
import 'package:shop_app/styles/Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
    );
  }
}

