import 'package:flutter/material.dart';

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PrimeiraRota(),
        routes: {
          RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
        });
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController grausController = TextEditingController();

  converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graus Celsius'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: grausController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => grausController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'temperatura em graus celsius',
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Converter"),
            onPressed: () {
              Navigator.pushNamed(
                context,
                RotaGenerica.caminhoDaRota,
                arguments: ArgumentosDaRota(
                  'Graus Fahrenheit',
                  double.parse(grausController.text),
                  converter(double.parse(grausController.text)),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(argumentos.titulo),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Graus Celsius: ${argumentos.celsius.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              'Graus Fahrenheit: ${argumentos.fahrenheit.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ]),
        ));
  }
}

class ArgumentosDaRota {
  String titulo;
  double celsius;
  double fahrenheit;

  ArgumentosDaRota(this.titulo, this.celsius, this.fahrenheit);
}
