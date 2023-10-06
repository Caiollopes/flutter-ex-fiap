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
      title: Text("Anuncio Horizontal"),
      centerTitle: true,
      backgroundColor: Colors.red,
    );
  }

  _corpo() {
    return Container(
      child: PageView(
        children: <Widget>[
          _anuncio(
              'Processador Intel Core I3-12100F',
              'i3.jpg',
              'O processador Intel Core I3-12100F traz desempenho com foco em jogos para você mergulhar em novos mundos.',
              'R\$ 598,99'),
          _anuncio(
              'Processador Intel Core i5-12600K',
              'i5.jpg',
              'O processador Intel Core i5-12600K traz desempenho com foco em jogos para você mergulhar em novos mundos.',
              'R\$ 1.678,99'),
          _anuncio(
              'Processador Intel Core I7-12700K',
              'i7.jpg',
              'O processador Intel Core I7-12700K traz desempenho com foco em jogos para você mergulhar em novos mundos.',
              'R\$ 1.899,99'),
          _anuncio(
              'Processador Intel Core I9-12900KF',
              'i9.jpg',
              'O processador Intel Core I9-12900KF traz desempenho com foco em jogos para você mergulhar em novos mundos.',
              'R\$ 2.789,99'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      width: 300,
      fit: BoxFit.contain,
    );
  }

  _descAnuncio(String texto) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    );
  }

  _precoAnuncio(String preco) {
    return Text(
      preco,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _tituloAnuncio(String titulo) {
    return Text(
      titulo,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 23,
      ),
    );
  }

  _anuncio(
      String tituloAnuncio, String caminhoFoto, String texto, String preco) {
    return Container(
      child: Column(children: <Widget>[
        SizedBox(height: 25),
        _tituloAnuncio(tituloAnuncio),
        _foto(caminhoFoto),
        _descAnuncio(texto),
        _precoAnuncio(preco),
      ]),
    );
  }
}
