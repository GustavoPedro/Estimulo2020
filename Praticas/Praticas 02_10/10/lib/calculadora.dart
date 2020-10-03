import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  TextEditingController num03Controller = TextEditingController();
  String resp = "";

  void somar() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 + num02;
    setState(
      () {
        this.resp = '$num01 + $num02 = $soma';
      },
    );
  }

  void sub() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int sub = num01 - num02;
    setState(
      () {
        this.resp = '$num01 - $num02 = $sub';
      },
    );
  }

  void div() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double div = num01 / num02;
    setState(
      () {
        this.resp = '$num01 / $num02 = $div';
      },
    );
  }

  void mult() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double mult = num01 * num02;
    setState(
      () {
        this.resp = '$num01 * $num02 = $mult';
      },
    );
  }

  imc() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double imc = num01 / (num02 * num02);
    this.resp = '$num01 /($num02*$num02) = $imc';
    return this.resp;
  }

  volume() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double num03 = double.tryParse(this.num03Controller.text);
    double volume = num01 * num02 * num03;
    this.resp = '$num01 * $num02 * $num03 = $volume';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          ButtonBar(
            children: [
              FlatButton(
                onPressed: somar,
                child: Text("Somar"),
              ),
              FlatButton(
                onPressed: sub,
                child: Text("Subtrair"),
              ),
              FlatButton(
                onPressed: mult,
                child: Text("Multiplicar"),
              ),
              FlatButton(
                onPressed: div,
                child: Text("Dividir"),
              ),
            ],
          ),
          Text('Resultado: ${resp}'),
        ],
      ),
    );
  }
}
