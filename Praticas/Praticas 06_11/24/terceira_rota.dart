import 'package:flutter/material.dart';
import 'package:praticas_06_11/24/produto.dart';

class TerceiraRota extends StatefulWidget {
  final Produto produto;
  final int indice;

  const TerceiraRota({
    Key key,
    @required this.produto,
    @required this.indice,
  }) : super(key: key);
  @override
  _TerceiraRotaState createState() => _TerceiraRotaState();
}

class _TerceiraRotaState extends State<TerceiraRota> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController precoController = TextEditingController();

  /*O método initState() gera o estado inicial do widget
 quando um objeto da classe for instanciado.*/
  @override
  void initState() {
    super.initState();
    this.nomeController.text = widget.produto.nome;
    this.descricaoController.text = widget.produto.descricao;
    this.precoController.text = widget.produto.preco?.toStringAsFixed(2) ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alterar Produto'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: new EdgeInsets.only(left: 25, right: 25),
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => precoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'nome',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextFormField(
              controller: descricaoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => precoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'descrição',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: precoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => precoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'preço',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
            child: ElevatedButton(
              child: Icon(Icons.save),
              onPressed: () {
                Produto produto = Produto(
                  url: widget.produto.url,
                  nome: this.nomeController.text,
                  descricao: this.descricaoController.text,
                  preco: double.tryParse(precoController.text),
                );
                Navigator.pop(context, {
                  "produto": produto,
                  "indice": widget.indice,
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
