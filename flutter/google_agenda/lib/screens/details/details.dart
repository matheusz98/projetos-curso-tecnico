import 'package:flutter/material.dart';
import 'package:google_agenda/models/contact.dart';

class Details extends StatelessWidget {
  final Contact contact;

  Details(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              (contact.isFavorite) ? Icons.star : Icons.star_border,
            ),
          ),
        ],
      )
    );
  }
}