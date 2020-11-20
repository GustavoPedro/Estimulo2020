import 'package:flutter/material.dart';
import './produto.dart';

class ProdutoDetalhes extends StatelessWidget {
  final Produto produtoSelecionado;

  const ProdutoDetalhes({Key key, @required this.produtoSelecionado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produto"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              produtoSelecionado.nome,
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image(
              height: 300,
              width: 450,
              image: NetworkImage(
                produtoSelecionado.url,
              ),
            ),
          ),
          Center(child: Text('${produtoSelecionado.descricao}')),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'R\$ ${produtoSelecionado.preco.toStringAsFixed(2)}',
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Text(
              "Voltar para primeira rota",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
