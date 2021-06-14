import 'dart:io';
import 'package:alunos/registers/form_edit.dart';
import 'package:alunos/registers/form_register.dart';
import 'package:alunos/registers/form_remove.dart';
import 'package:alunos/screens/home/listOfStudents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(MaterialApp(
      title: "Cadastro de alunos",
      debugShowCheckedModeBanner: false,
      routes: {
        // Home
        "/": (BuildContext context) => ListOfStudents(),
        "/register": (BuildContext context) => FormRegister(),
        "/edit": (BuildContext context) => FormEdit(),
        "/remove": (BuildContext context) => FormRemove(),
      },
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
    ));
  } else {
    runApp(CupertinoApp());
  }
}