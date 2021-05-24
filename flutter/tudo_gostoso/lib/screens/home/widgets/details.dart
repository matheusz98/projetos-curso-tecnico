import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/style.dart';

class Details extends StatelessWidget {
  final Recipe recipe;

  Details(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeTheme,
      padding: EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 10,
      ),
      child: Column(
        children: [
          Text(
            this.recipe.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 1° Coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "PREPARO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${this.recipe.preparationTime} MIN",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // 2° Coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.cheese,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "RENDIMENTO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${this.recipe.income} PORÇÕES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              // 3° coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "FAVORITOS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    this.recipe.numberOfFavorites.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              // 4° coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCommentAlt,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "COMENTÁRIOS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    this.recipe.numberOfComments.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
