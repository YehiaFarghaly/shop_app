import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
          color: Colors.black
      )

  ),
  primarySwatch: Colors.orange,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.orange[400],
      statusBarBrightness: Brightness.light,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.orange,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(
      color: Colors.brown,
      size: 30,
    ),
    unselectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: Colors.orange,
  ),
  fontFamily: 'comic_cat'
);

ThemeData darkTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
          color: Colors.white
      )
  ),
  primarySwatch: Colors.orange,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('333739'),
        statusBarBrightness: Brightness.light),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: HexColor('333739'),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(
      color: Colors.orange,
      size: 30,
    ),
    unselectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: HexColor('333739'),
  ),
  fontFamily: 'comic_cat'
);