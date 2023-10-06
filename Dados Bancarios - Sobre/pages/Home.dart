import 'package:flutter/material.dart';
import 'Sobre.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

  String sexo = "Masculino";
  String escolaridade = "Completo";
  double limite = 0;
  bool brasileiro = false;
  String dados = "";
  String brasa = "";

  void _resultado() {
    setState(() {
      int idade = int.parse(idadeController.text);
      String nome = nomeController.text;

      if (brasileiro == 'false') {
        brasa = "Nao";
      } else {
        brasa = "Sim";
      }

      dados =
          "Dados informados : \n Nome: $nome \n Idade: $idade \n Sexo: $sexo \n Escolaridade: $escolaridade \n Limite: $limite \n Brasileiro: $brasa";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Abertura de conta"),
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
          _campo("Nome", nomeController),
          _campo("Idade", idadeController),
          _sexo(),
          _escolaridade(),
          _slider(),
          _switch(),
          _button(context),
          _texto(),
        ],
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

  _sexo() {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Sexo: ", style: TextStyle(fontSize: 25, color: Colors.black)),
          SizedBox(width: 15),
          DropdownButton<String>(
            value: sexo,
            items: <String>['Masculino', 'Feminino'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? sexoSelecionado) {
              setState(() {
                sexo = sexoSelecionado!;
              });
            },
          ),
        ],
      ),
    );
  }

  _escolaridade() {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Escolaridade: ",
              style: TextStyle(fontSize: 25, color: Colors.black)),
          SizedBox(width: 15),
          DropdownButton<String>(
            value: escolaridade,
            items: <String>['Completo', 'Incompleto'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? escolaridadeSelecionado) {
              setState(() {
                escolaridade = escolaridadeSelecionado!;
              });
            },
          ),
        ],
      ),
    );
  }

  _slider() {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Limite: ", style: TextStyle(fontSize: 25, color: Colors.black)),
          Slider(
            value: limite,
            min: 0,
            max: 200,
            divisions: 200,
            label: limite.round().toString(),
            onChanged: (double value) {
              setState(() {
                limite = value;
              });
            },
          ),
        ],
      ),
    );
  }

  _switch() {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Brasileiro?",
              style: TextStyle(fontSize: 25, color: Colors.black)),
          SizedBox(width: 15),
          Switch(
            value: brasileiro,
            onChanged: (value) {
              setState(() {
                brasileiro = value;
              });
            },
          ),
        ],
      ),
    );
  }

  _texto() {
    return Text(dados);
  }

  _button(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
      onPressed: () => _onClickOtherScreen(context),
      child: Text(
        "Verificar",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  _onClickOtherScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return Sobre(
          nome: nomeController.text,
          idade: idadeController.text,
          sexo: sexo,
          escolaridade: escolaridade,
          limite: limite,
          brasileiro: brasileiro,
        );
      }),
    );
  }
}
