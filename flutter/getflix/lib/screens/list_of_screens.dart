import 'package:flutter/material.dart';
import 'package:getflix/screens/movies/movies.dart';

List<Widget> listOfScreens = [
  Movies(),
  //Outras telas
  Container(
    child: Text(
      "Tela de busca",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  Container(
    child: Text(
      "Tela de novidades",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  Container(
    child: Text(
      "Tela de downloads",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  Container(
    child: Text(
      "Tela de mais informações",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
];