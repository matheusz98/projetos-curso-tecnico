import 'package:flutter/material.dart';
import 'package:getflix/screens/home/home.dart';
import 'package:getflix/style.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      // Tema escuro
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: grayTheme,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            textStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
    ),
  );
}