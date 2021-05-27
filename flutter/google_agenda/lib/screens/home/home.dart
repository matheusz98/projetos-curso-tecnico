import 'package:flutter/material.dart';
import 'package:google_agenda/models/contact.dart';
import 'package:google_agenda/provider/contacts.dart';
import 'package:google_agenda/screens/details/details.dart';
import 'package:google_agenda/style.dart';

class Home extends StatefulWidget{
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: listOfContacts.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Contact contact = listOfContacts.elementAt(index);
    return ListTile(
      leading: IconButton(
        icon: Hero(
            tag: contact.cellPhone,
            child: Icon(
            (contact.isFavorite) ? Icons.star : Icons.star_border,
            color: Theme.of(context).primaryColor,
            size: 20,
          ),
        ),
        onPressed: () {
          setState(() {
            contact.isFavorite = !contact.isFavorite;
          });
        },
      ),
      title: Row(
        children: [
          ClipOval(
            child: Hero(
              tag: contact.name,
                child: Image.asset(
                contact.photo,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
              width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: grayTheme,
                ),
              ),
              Text(
                contact.cellPhone,
                style: TextStyle(
                  fontSize: 10,
                  color: grayTheme,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.chevron_right,
          size: 15,
          ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Details(contact);
              }
            ),
          );
        },
      ),
    );
  }
}