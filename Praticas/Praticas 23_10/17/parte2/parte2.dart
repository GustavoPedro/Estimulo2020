import 'package:flutter/material.dart';

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PrimeiraRota(),
        routes: {
          PrimeiraRota.rota: (context) => PrimeiraRota(),
          SegundaRota.rota: (context) => SegundaRota(),
          TerceiraRota.rota: (context) => TerceiraRota()
        });
  }
}

class PrimeiraRota extends StatelessWidget {
  static final String rota = "/primeiraRota";
  final TextEditingController cotacaoDolarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: cotacaoDolarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => cotacaoDolarController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o valor em real',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton.icon(
              label: const Text('Próximo'),
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SegundaRota.rota,
                  arguments: ArgumentosDaRota(
                    real: double.tryParse(cotacaoDolarController.text),
                    dolar: 0.0,
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static final String rota = "/segundaRota";
  final TextEditingController cotacaoDolarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: cotacaoDolarController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => cotacaoDolarController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Informe a cotação do dolar',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                label: const Text('Próximo'),
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    TerceiraRota.rota,
                    arguments: ArgumentosDaRota(
                      real: argumentos.real,
                      dolar: double.tryParse(cotacaoDolarController.text),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static final String rota = "/terceiraRota";
  final TextEditingController cotacaoDolarController = TextEditingController();

  double converterEmDolar(double real, double cotacao) => real / cotacao;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Text(
          'R\$ ${argumentos.real.toStringAsFixed(2)} = US\$ ${converterEmDolar(argumentos.real, argumentos.dolar).toStringAsFixed(2)}',
          style: TextStyle(
            color: Colors.yellow[800],
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  final double real;
  final double dolar;

  ArgumentosDaRota({this.real, this.dolar});
}
