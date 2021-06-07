import 'package:flutter/material.dart';
import 'package:getflix/screens/home/widget/item_menu.dart';
import 'package:getflix/screens/list_of_screens.dart';
import 'package:getflix/style.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/logo.png",
        ),
        actions: [
          ItemMenu(word: "Séries"),
          ItemMenu(word: "Filmes"),
          ItemMenu(word: "Minha lista"),
        ],
      ),
      body: listOfScreens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
            ),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/search.png",
            ),
            label: "Buscar",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/player.png",
            ),
            label: "Em breve",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/download.png",
            ),
            label: "Dowloads",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/menu.png",
            ),
            label: "Mais",
            backgroundColor: Colors.black,
          ),
        ],
        showUnselectedLabels: true,
        selectedItemColor: grayNavigationBar,
        unselectedItemColor: grayNavigationBar,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            // Mudar de aba
            _currentIndex = index;
          });
        },
      ),
    );
  }
}