import 'package:flutter/material.dart';
import 'package:google_agenda/provider/contacts.dart';

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
        itemCount: 8,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    return Text("Item ${index + 1}");
  }
}