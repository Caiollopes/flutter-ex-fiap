import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TelaInicial();
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String resultado = "";

  void _calcular() {
    setState(() {
      int numero = new Random().nextInt(11);

      resultado = "$numero";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Numero Aleatorio"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Container(
      width: double.infinity,
      color: Colors.white10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _imagem(),
          SizedBox(height: 20),
          _titulo(),
          SizedBox(height: 16),
          _texto(),
          SizedBox(height: 30),
          _button(),
        ],
      ),
    );
  }

  _titulo() {
    return Text(
      "Pense em um n de 0 a 10!",
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),
    );
  }

  _texto() {
    return Text(
      resultado,
      style: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _button() {
    return Container(
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        onPressed: () {
          _calcular();
        },
        child: Text(
          "Descobrir",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  _imagem() {
    return Center(
      child: Image.network(
        'https://geekdama.com.br/wp-content/uploads/2022/06/one-piece-anime-buggy-postcover-1280x670.jpg',
      ),
    );
  }
}
