import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      appBar: AppBar(
        title: Text('Formação'),
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
                _dados("Ensino Fundamental: ", "Completo"),
                SizedBox(height: 12),
                _dados("Ensino Medio: ", "Completo"),
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
