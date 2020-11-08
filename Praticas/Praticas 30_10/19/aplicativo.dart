import 'package:flutter/material.dart';
import 'package:pratica_30_10/19/primeira_rota.dart';

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      debugShowCheckedModeBanner: false,
    );
  }
}
