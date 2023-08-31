import 'package:flutter/material.dart';

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
  TextEditingController numController = TextEditingController();
  TextEditingController nummController = TextEditingController();

  String result = "";

  void _mult() {
    setState(() {
      double num1 = double.parse(numController.text);
      double num2 = double.parse(nummController.text);

      double max = num1 / (num2 * num2);

      if (max < 18.5)
        result = 'Abaixo do peso';
      else if (max < 24.5)
        result = 'Peso normal';
      else if (max < 29.9)
        result = 'Sobrepeso';
      else if (max < 34.9)
        result = 'Obesidade grau 1';
      else if (max < 39.9)
        result = 'Obesidade grau 2';
      else
        result = 'Obesidade grau 3';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("IMC"),
          centerTitle: true,
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
          _img(),
          _campo("Peso", numController),
          _campo("Altura", nummController),
          _button(),
          _texto(),
        ],
      ),
    );
  }

  _campo(String title, TextEditingController controller) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: title, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
      controller: controller,
    );
  }

  _texto() {
    return Text(result);
  }

  _img() {
    return Image.network(
        'https://media2.giphy.com/media/K4x1ZL36xWCf6/giphy.gif?cid=ecf05e47qnj2w7nz9e7scsjh2tmsnurjy3vi5n7js5ctf3ez&ep=v1_gifs_search&rid=giphy.gif&ct=g');
  }

  _button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
      onPressed: _mult,
      child: Text(
        "Verificar",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
