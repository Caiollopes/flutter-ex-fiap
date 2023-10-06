import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      appBar: AppBar(
        title: Text('Experiencia'),
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
                _dados("Completa Telecomunicações: ", "1 ano 6 meses"),
                SizedBox(height: 12),
                _dados("Grupo Verssat: ", "2 anos"),
                SizedBox(height: 12),
                _dados("Cesta da economia: ", "Presente"),
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
