import 'package:flutter/material.dart';
import 'Pessoal.dart';
import 'Formacao.dart';
import 'Experiencia.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TelaInicial();
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int _currentIndex = 0;

  final screens = [
    const Center(child: Text("Tela Home")),
    const Pessoal(),
    const Formacao(),
    const Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Meu Perfil"),
            centerTitle: true,
            bottom: _titulo(),
          ),
          body: _body(),
        ),
      ),
    );
  }

  _titulo() {
    return TabBar(
      tabs: [
        Tab(text: "Pessoal"),
        Tab(text: "Formação"),
        Tab(text: "Experiência"),
      ],
    );
  }

  _body() {
    return TabBarView(
      children: [
        const Pessoal(),
        const Formacao(),
        const Experiencia(),
      ],
    );
  }
}
