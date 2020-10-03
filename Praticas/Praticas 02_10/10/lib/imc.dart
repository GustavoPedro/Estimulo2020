import 'package:flutter/material.dart';

class IMC extends StatefulWidget {
  IMCState createState() {
    return IMCState();
  }
}

class IMCState extends State<IMC> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  TextEditingController num03Controller = TextEditingController();
  String resp = "";

  imc() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double imc = num01 / (num02 * num02);
    String resposta;
    print(imc);
    if (imc < 16)
      resposta = "Magreza Grave";
    else if (imc >= 16 && imc < 17)
      resposta = "Magreza moderada";
    else if (imc >= 17 && imc < 18.5)
      resposta = "Magreza leve";
    else if (imc >= 18.5 && imc < 25)
      resposta = "Saudável";
    else if (imc >= 25 && imc < 30)
      resposta = "Sobrepeso";
    else if (imc >= 30 && imc < 35)
      resposta = "Obesidade Grau I";
    else if (imc >= 35 && imc < 40)
      resposta = "Obesidade Grau II (severa)";
    else if (imc > 40) resposta = "Obesidade Grau III (mórbida)";
    print(imc >= 16 && imc < 17);
    setState(
      () {
        resp = resposta;
      },
    );
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
                labelText: 'Peso',
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
                labelText: 'Altura',
              ),
            ),
          ),
          ButtonBar(
            children: [
              FlatButton(
                onPressed: imc,
                child: Text("Calcular IMC"),
              ),
            ],
          ),
          Text('Resultado: ${resp}'),
        ],
      ),
    );
  }
}
