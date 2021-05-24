import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/pokemon.dart';
import 'package:pokedex_detalhes/screens/home/widgets/details.dart';
import 'package:pokedex_detalhes/screens/home/widgets/weaknesses.dart';

class Home extends StatelessWidget {
  final Pokemon _charmander = Pokemon(
    name: "Charmander",
    photo: "assets/images/charmander.png",
    description:
        "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da sua calda",
    type: "Fogo",
    ability: "Chama",
    height: 0.6,
    weight: 8.5,
    weaknesses: [
      "Água",
      "Terra",
      "Rocha",
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _charmander.name,
        ),
        backgroundColor: Color(0xffe3360e),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Column(
          children: [
            Image.asset(
              _charmander.photo,
              width: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                _charmander.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/bola_azul.png",
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/bola_vermelha.png",
                ),
              ],
            ),
            Details(_charmander),
            Weaknesses(_charmander.weaknesses),
          ],
        ),
      ),
    );
  }
}
