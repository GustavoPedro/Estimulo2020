import 'package:flutter/material.dart';

class ProdutoModel {
  final String titulo;
  final String subtitulo;
  final double preco;
  final String imgUrl;

  ProdutoModel({
    @required this.titulo,
    @required this.subtitulo,
    @required this.preco,
    @required this.imgUrl,
  });
}
