import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final double preco;
  final String url;
  final Function onPressedComprar;
  final Function onPressedDetalhes;

  Cartao({
    @required this.titulo,
    this.subtitulo,
    @required this.preco,
    @required this.url,
    @required this.onPressedComprar,
    @required this.onPressedDetalhes,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Image(
                image: NetworkImage(this.url),
                height: 200,
                width: 400,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.titulo,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.subtitulo,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'R\$ ${this.preco.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('DETALHES'),
                  onPressed: () {
                    this.onPressedDetalhes();
                  },
                ),
                FlatButton(
                  child: Text('COMPRAR'),
                  onPressed: () {
                    this.onPressedComprar();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
