import 'package:alunos/DAO/studentDAO.dart';
import 'package:alunos/model/student.dart';
import 'package:alunos/shared/menu.dart';
import 'package:flutter/material.dart';

class FormRemove extends StatelessWidget {
  final TextEditingController registrationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remoção de alunos"),
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
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  saveRecord(context);
                },
                child: Text("Remover aluno"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveRecord(BuildContext mainContext) async {
    int _registration = int.parse(registrationController.text);
    late String message;

    Student studant = Student(
      registration: _registration,
    );
    int _result =
        await StudentDAO.removeRecord("students", studant.registration!);

    if (_result != 0) {
      message = "O aluno removido com sucesso!!!";
    } else {
      message = "Não foi possível remover!!!";
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