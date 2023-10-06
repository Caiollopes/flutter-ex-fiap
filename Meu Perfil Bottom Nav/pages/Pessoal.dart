import 'package:flutter/material.dart';

class Pessoal extends StatelessWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      appBar: AppBar(
        title: Text('Pessoal'),
        backgroundColor: Colors.red,
      ),
    );
  }

  _body() {
    return ListView(
      children: [
        Column(
          children: [
            Column(
              children: [
                SizedBox(height: 12),
                _dados("Nome: ", "Caio Lopes Oliveira"),
                SizedBox(height: 12),
                _dados("Idade: ", "23"),
              ],
            ),
          ],
        ),
      ],
    );
  }

  _dados(String dado1, String dado2) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dado1,
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          dado2,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
