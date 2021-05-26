import 'package:/flutter/material.dart';

class Pokemon {
  String photo;
  String name;
  String description;
  String type;
  Color colorType;
  double weight;
  double height;

  Pokemon({
    required this.photo,
    required this.name,
    required this.description,
    required this.type,
    required this.colorType,
    required this.weight,
    required this.height,
  });
}