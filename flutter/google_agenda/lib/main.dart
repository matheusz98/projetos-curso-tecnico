import 'package:flutter/material.dart';
import 'package:google_agenda/screens/home/home.dart';
import 'package:google_agenda/style.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: MaterialColor(0xFF3771E0, {
        50: Color(0xFFF5F8FE),
        100: Color(0xFFEBF1FC),
        200: Color(0xFFCDDCF8),
        300: Color(0xFFADC5F3),
        400: Color(0xFF739CEA),
        500: Color(0xFF3771E0),
        600: Color(0xFF3165C8),
        700: Color(0xFF214487),
        800: Color(0xFF193365),
        900: Color(0xFF102141),
      }),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: redTheme,
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}