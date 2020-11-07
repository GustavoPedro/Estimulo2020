import 'package:flutter/material.dart';
import 'package:praticas_06_11/21/primeira_rota.dart';
import 'package:praticas_06_11/21/segunda_rota.dart';

class Inicio extends StatefulWidget {
  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio> {
  int indice = 0;
  final List<Widget> rotas = [
    PrimeiraRota(),
    SegundaRota(),
  ];
  void aoPressionar(int rotaSelecionada) {
    setState(
      () {
        this.indice = rotaSelecionada;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: rotas[this.indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.indice,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Primeira Rota',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Segunda Rota',
          ),
        ],
        onTap: (int pageTapped) {
          aoPressionar(pageTapped);
        },
      ),
    );
  }
}
