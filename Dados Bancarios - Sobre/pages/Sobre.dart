import 'package:flutter/material.dart';
import 'Home.dart';

class Sobre extends StatelessWidget {
  String nome;
  String idade;
  String sexo;
  String escolaridade;
  double limite;
  bool brasileiro;

  Sobre({
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.escolaridade,
    required this.limite,
    required this.brasileiro,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados Informados"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(height: 5),
            _dados("Nome: ", nome),
            SizedBox(height: 5),
            _dados("Idade: ", idade),
            SizedBox(height: 5),
            _dados("Sexo: ", sexo),
            SizedBox(height: 5),
            _dados("Escolaridade: ", escolaridade),
            SizedBox(height: 5),
            _dados("Limite: ", "$limite"),
            SizedBox(height: 5),
            _dados("Brasileiro: ", brasileiro ? "Sim" : "Não"),
          ],
        ),
      ],
    );
  }

  _dados(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 16),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
