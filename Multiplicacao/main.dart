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
      int num1 = int.parse(numController.text);
      int num2 = int.parse(nummController.text);

      int ritter = num1 * num2;

      result = "Resultado: $ritter";
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
          _campo("Digite o primeiro valor", numController),
          _campo("Digite o segundo valor", nummController),
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
        "Multiplicar",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
