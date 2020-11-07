import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praticas_06_11/21/produto_model.dart';

class Detalhes extends StatelessWidget {
  final ProdutoModel produto;

  const Detalhes({Key key, @required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: NetworkImage(produto.imgUrl),
                height: 300,
                width: 450,
              ),
              Center(
                child: Text(
                  produto.titulo,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  produto.subtitulo,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "R\$ " + produto.preco.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Voltar para a segunda Rota",
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
