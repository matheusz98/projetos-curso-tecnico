import 'package:flutter/material.dart';
import 'package:loja/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF1087FF, {
          50: Color(0xFFF4F9FF),
          100: Color(0xFFE8F3FF),
          200: Color(0xFFC4E1FF),
          300: Color(0xFF9ECEFF),
          400: Color(0xFF58ABFF),
          500: Color(0xFF1087FF),
          600: Color(0xFF0F79E3),
          700: Color(0xFF0A5199),
          800: Color(0xFF083D73),
          900: Color(0xFF05284A),
          }
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}