import 'package:flutter/material.dart';
import 'package:pratica_30_10/19/cartao.dart';
import 'package:pratica_30_10/19/rota_generica.dart';
import 'package:pratica_30_10/19/segunda_rota.dart';
import 'package:pratica_30_10/19/transporte.dart';

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() => PrimeiraRotaState();
}

const List<Transporte> transportes = <Transporte>[
  Transporte(titulo: 'Carro', icone: Icons.directions_car),
  Transporte(titulo: 'Bicicleta', icone: Icons.directions_bike),
  Transporte(titulo: 'Barco', icone: Icons.directions_boat),
  Transporte(titulo: 'Ônibus', icone: Icons.directions_bus),
  Transporte(titulo: 'Trem', icone: Icons.directions_railway),
];

class PrimeiraRotaState extends State<PrimeiraRota> {
  Transporte transporte = transportes[0];
  void selecionar(Transporte transporteEscolhido) {
    setState(
      () {
        this.transporte = transporteEscolhido;
      },
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RotaGenerica(
          transporte: transporteEscolhido,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.video_collection),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
          tooltip: 'Coleção de Vídeos',
        ),
        title: Text('Primeira Rota'),
        actions: <Widget>[
          IconButton(
            icon: Icon(transportes[0].icone),
            onPressed: () {
              selecionar(transportes[0]);
            },
          ),
          IconButton(
            icon: Icon(transportes[1].icone),
            onPressed: () {
              selecionar(transportes[1]);
            },
          ),
          PopupMenuButton<Transporte>(
            onSelected: selecionar,
            itemBuilder: (BuildContext context) {
              return transportes.skip(2).map(
                (Transporte transporte) {
                  return PopupMenuItem<Transporte>(
                    value: transporte,
                    child: Text(transporte.titulo),
                  );
                },
              ).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Cartao(transporte: this.transporte),
      ),
    );
  }
}
