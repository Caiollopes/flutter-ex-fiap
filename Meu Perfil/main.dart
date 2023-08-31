import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perfil do Caio"),
          centerTitle: true,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Text(
              " Nome \n Caio Lopes \n\n Formação \n FIAP \n\n Experiência \n Cesta da economia - 8 meses \n\n Projetos \n https://github.com/Caiollopes ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.red,
              ),
            )),
      ),
    );
  }
}