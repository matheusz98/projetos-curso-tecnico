import 'package:alunos/DAO/studentDAO.dart';
import 'package:alunos/model/student.dart';
import 'package:alunos/shared/menu.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class FormEdit extends StatelessWidget {
  final TextEditingController registrationController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edição de alunos"),
      ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Matrícula do aluno"),
                keyboardType: TextInputType.number,
                controller: registrationController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Nome do aluno"),
                keyboardType: TextInputType.name,
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Email do aluno"),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    saveRecord(context);
                  },
                  child: Text("Editar aluno")),
            ],
          ),
        ),
      ),
    );
  }

  void saveRecord(BuildContext mainContext) async {
    int _registration = int.parse(registrationController.text);
    String _name = nameController.text;
    String _email = emailController.text;
    late String message;

    if (EmailValidator.validate(_email)) {
      Student studant = Student(
        registration: _registration,
        name: _name,
        email: _email,
      );
      int _result = await StudentDAO.updateRecord("students", studant.toMap());

      if (_result != 0) {
        message = "O aluno $_name foi cadastrado com sucesso!!!";
      } else {
        message = "Não foi possível cadastrar o aluno $_name!!!";
      }
    } else {
      message = "Email inválido!!!";
    }

    showDialog(
      context: mainContext,
      builder: (BuildContext context) => AlertDialog(
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