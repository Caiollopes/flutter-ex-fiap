import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Vagas de emprego"),
      centerTitle: true,
      backgroundColor: Colors.red,
    );
  }

  _corpo() {
    return Container(
      child: ListView(
        children: <Widget>[
          _vagas(
              'Desenvolvedor(a) React Native Senior',
              'Para mais informações entre em contato: contato@cocacola.com.br',
              'R\$ 12.000,00 + Beneficios'),
          _vagas(
              'Desenvolvedor(a) Front-end Pleno',
              'Para mais informações entre em contato: contato@nestle.com.br',
              'R\$ 4.600,00 + Beneficios'),
          _vagas(
              'Desenvolvedor(a) Back-end Pleno',
              'Para mais informações entre em contato: contato@fiap.com.br',
              'R\$ 4.600,00 + Beneficios'),
          _vagas(
              'Desenvolvedor(a) Flutter Junior',
              'Para mais informações entre em contato: contato@eletrolux.com.br',
              'R\$ 2.500,00 + Beneficios'),
        ],
      ),
    );
  }

  _descVaga(String texto) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    );
  }

  _salarioVaga(String salario) {
    return Text(
      salario,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _nomeVaga(String titulo) {
    return Text(
      titulo,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 23,
      ),
    );
  }

  _vagas(String titulo, String texto, String salario) {
    return Container(
      child: Column(children: <Widget>[
        SizedBox(height: 25),
        _nomeVaga(titulo),
        _descVaga(texto),
        _salarioVaga(salario),
      ]),
    );
  }
}
