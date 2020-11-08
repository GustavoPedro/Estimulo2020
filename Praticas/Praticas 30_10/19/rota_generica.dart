import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratica_30_10/19/transporte.dart';

import 'cartao.dart';

class RotaGenerica extends StatelessWidget {
  final Transporte transporte;

  const RotaGenerica({Key key, @required this.transporte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(transporte.titulo),
      ),
      body: Column(
        children: [
          Cartao(
            transporte: transporte,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Voltar para a Primeira Rota'),
          ),
        ],
      ),
    );
  }
}
