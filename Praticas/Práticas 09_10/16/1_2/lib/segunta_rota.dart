import 'package:flutter/material.dart';
import 'package:pratica16/preco.dart';

class SegundaRota extends StatelessWidget {
  final Preco preco;

  const SegundaRota({Key key, this.preco}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double resultado = preco.razao();
    String melhorOpcao =
        resultado > 0.7 ? "Abasteça com Gasolina" : "Abasteça com Etanol";
    final primeiraRota = Padding(
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context, melhorOpcao);
          },
          child: Text(
            "Ir para Primeira Rota",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, melhorOpcao);
            }),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${preco.etanol} / ${preco.gasolina} = ${resultado.toStringAsFixed(2)}",
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
              Text(
                melhorOpcao,
                style: TextStyle(color: Colors.blue, fontSize: 22),
              ),
              primeiraRota
            ],
          ),
        ),
      ),
    );
  }
}
