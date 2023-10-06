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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meu Perfil"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Pessoal",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Formação",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Experiência",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
