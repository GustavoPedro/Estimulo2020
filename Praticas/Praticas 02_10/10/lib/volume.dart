import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  VolumeState createState() {
    return VolumeState();
  }
}

class VolumeState extends State<Volume> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  TextEditingController num03Controller = TextEditingController();
  String resp = "";

  volume() {
    double num01 = double.tryParse(this.num01Controller.text);
    double num02 = double.tryParse(this.num02Controller.text);
    double num03 = double.tryParse(this.num03Controller.text);
    double volume = num01 * num02 * num03;
    setState(
      () {
        resp = '$num01 * $num02 * $num03 = $volume';
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
                labelText: 'Comprimento',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Largura',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num03Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num03Controller.clear(),
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
                onPressed: volume,
                child: Text("Calcular do volume"),
              ),
            ],
          ),
          Text('Resultado: ${resp}'),
        ],
      ),
    );
  }
}
