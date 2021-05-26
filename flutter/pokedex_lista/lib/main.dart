import 'package:flutter/material.dart';
import 'package:pokedex_lista/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Pokédex Lista",
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}