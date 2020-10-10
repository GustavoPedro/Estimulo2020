import 'package:flutter/material.dart';
import './rotas/tela/rota.dart';
void main() => runApp(
 MaterialApp(
 initialRoute: '/',
 routes: {
 '/': (context) => PrimeiraTela(),
 '/segunda': (context) => SegundaTela(),
 '/terceira': (context) => TerceiraTela(),
 },
 ),
);