import 'package:alunos/DAO/studentDAO.dart';
import 'package:alunos/model/student.dart';
import 'package:alunos/shared/menu.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de alunos"),
      ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Nome do aluno",
                ),
                keyboardType: TextInputType.name,
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email do aluno",
                ),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  saveRegister(context);
                },
                child: Text("Cadastrar aluno"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveRegister(BuildContext mainContext) async {
    String name = nameController.text;
    String email = emailController.text;
    String message;

    if (!EmailValidator.validate(email)) {
      showDialog(
        context: mainContext,
        builder: (context) => AlertDialog(
          title: Text("Mensagem do sistema"),
          content: Text("Email inválido!!!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    } else {
      Student student = Student(
        name: name,
        email: email,
      );
      int result = await StudentDAO.insertRecord("students", student.toMap());

      if (result != 0) {
        message = "O aluno $name foi cadastrado com sucesso!!!";
      } else {
        message = "O aluno $name não pode ser cadastrado!!!";
      }

      showDialog(
        context: mainContext,
        builder: (context) => AlertDialog(
          title: Text("Mensagem do sistema"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }
}