import 'package:flutter/material.dart';

class ListElements extends StatelessWidget {
  final List<String> _list;
  final String _title;

  ListElements(
    this._list,
    this._title,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this._title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Ingredientes
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: buildList(
              this._list,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> buildList(List<String> list) {
    List<Widget> listOfWidgets = [];
    list.forEach((String element) {
      listOfWidgets.add(
        Text(
          element,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      );
    });
    return listOfWidgets;
  }
}
