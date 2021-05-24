import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/screens/home/widgets/details.dart';
import 'package:tudo_gostoso/screens/home/widgets/list_elements.dart';
import 'package:tudo_gostoso/style.dart';

class Home extends StatelessWidget {
  final Recipe recipe = Recipe(
    photo: "assets/images/bolo.jpg",
    name: "Bolo gelado",
    preparationTime: 40,
    numberOfFavorites: 332936,
    numberOfComments: 6868,
    income: 12,
    ingredientsPaste: [
      "4 ovos",
      "2 xícaras (chá) de açúcar",
      "3 xícaras (chá) de farinha de trigo",
      "1 copo (americano) de suco de laranja",
      "1 colher (sopa) de fermento em pó",
    ],
    ingredientsRoof: [
      "1 garrafa pequena de leite de coco",
      "1 garrafa de leite (utilize a mesma garrafa do leite de coco como medida)",
      "1 lata de leite condensado",
      "1 pacote de coco ralado sem açúcar",
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tudo Gostoso"),
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
        backgroundColor: orangeTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              recipe.photo,
            ),
            Details(recipe),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: orangeTheme,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "INGREDIENTES",
                  style: TextStyle(
                    color: orangeTheme,
                  ),
                ),
              ],
            ),
            ListElements(
              this.recipe.ingredientsPaste,
              "Massa",
            ),
            SizedBox(
              height: 10,
            ),
            ListElements(
              this.recipe.ingredientsRoof,
              "Cobertura",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.utensilSpoon,
                  color: orangeTheme,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "MODO DE PREPARO",
                  style: TextStyle(
                    color: orangeTheme,
                  ),
                ),
              ],
            ),
            ListElements(this.recipe.ingredientsPaste, "Massa"),
            SizedBox(
              height: 10,
            ),
            ListElements(this.recipe.ingredientsRoof, "Cobertura"),
          ],
        ),
      ),
    );
  }
}
