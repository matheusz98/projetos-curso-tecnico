import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/pokemon.dart';
import 'package:pokedex_detalhes/screens/home/widgets/pill.dart';

class Weaknesses extends StatelessWidget {
  final List<String> _weaknesses;

  Weaknesses(this._weaknesses);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              "Fraquezas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Pill(
                color: Color(0xFF688ef5),
                text: "Água",
              ),
              Pill(
                color: Color(0xFFf5dd40),
                text: "Terra",
              ),
              Pill(
                color: Color(0xFFa08b2c),
                text: "Rocha",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
