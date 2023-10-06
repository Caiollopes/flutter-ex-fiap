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
  String deValor = 'Real';
  String paraValor = 'Dolar';

  String result = "";
  double total = 0;

  void _mult() {
    setState(() {
      double num1 = double.parse(numController.text);

      result = "Resultado: $total";

      if (deValor == 'Dolar' && paraValor == 'Dolar')
        total = num1 * 1;
      else if (deValor == 'Dolar' && paraValor == 'Real')
        total = num1 * 4.93;
      else if (deValor == 'Dolar' && paraValor == 'Euro')
        total = num1 * 0.93;
      else if (deValor == 'Real' && paraValor == 'Real')
        total = num1 * 1;
      else if (deValor == 'Real' && paraValor == 'Dolar')
        total = num1 * 0.20;
      else if (deValor == 'Real' && paraValor == 'Euro')
        total = num1 * 0.19;
      else if (deValor == 'Euro' && paraValor == 'Euro')
        total = num1 * 1;
      else if (deValor == 'Euro' && paraValor == 'Dolar')
        total = num1 * 1.07;
      else if (deValor == 'Euro' && paraValor == 'Real') total = num1 * 5.30;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Conversao"),
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
          // _img(),
          _campo("Valor", numController),
          _deValor(),
          _paraValor(),
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
    return Text(result,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ));
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
        "Converter",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  _deValor() {
    return DropdownButton<String>(
      value: deValor,
      items: <String>['Dolar', 'Real', 'Euro'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          deValor = valorSelecionado!;
        });
      },
    );
  }

  _paraValor() {
    return DropdownButton<String>(
      value: paraValor,
      items: <String>['Dolar', 'Real', 'Euro'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          paraValor = valorSelecionado!;
        });
      },
    );
  }
}
