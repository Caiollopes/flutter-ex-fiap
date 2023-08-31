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

  String result = "Resultado: ";

  void _mult() {
    setState(() {
      double num1 = double.parse(numController.text);
      double num2 = double.parse(nummController.text);

      double max = num1 / num2;

      if (max < 0.7) {
        result = "Alcool e melhor";
      } else {
        result = "Gasolina e melhor";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiplicador de Numero"),
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
          _campo("Preço do Alcool", numController),
          _campo("Preço da Gasolina", nummController),
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
        'https://media1.giphy.com/media/Wtq3WpOYH1T3qR7KmO/giphy.gif?cid=ecf05e47a03duncoaim2whrmt9bvusjkn9xi5xzwmxbkanwv&ep=v1_gifs_search&rid=giphy.gif&ct=g');
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
