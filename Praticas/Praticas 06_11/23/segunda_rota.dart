import 'package:flutter/material.dart';
import 'package:pratica_30_10/23/produto.dart';
import 'package:pratica_30_10/23/produto_menu.dart';

class SegundaRota extends StatefulWidget {
  @override
  _SegundaRotaState createState() => _SegundaRotaState();
}

List<DropdownMenuItem<ProdutoMenu>> montarListaProdutosMenu(List menu) {
  List<DropdownMenuItem<ProdutoMenu>> listaProdutosMenu = List();
  for (ProdutoMenu produtoMenu in menu) {
    listaProdutosMenu.add(
      DropdownMenuItem(
        value: produtoMenu,
        child: Text(produtoMenu.nome),
      ),
    );
  }
  return listaProdutosMenu;
}

class _SegundaRotaState extends State<SegundaRota> {
  ProdutoMenu produtoSelecionado;
  List<DropdownMenuItem<ProdutoMenu>> listaProdutosMenu;
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController precoController = TextEditingController();

  /*O método initState() gera o estado inicial do widget
 quando um objeto da classe for instanciado.*/
  @override
  void initState() {
    listaProdutosMenu = montarListaProdutosMenu(ProdutoMenu.menu());
    produtoSelecionado = listaProdutosMenu[0].value;
    super.initState();
  }

  aoSelecionarProduto(ProdutoMenu produtoSelecionado) {
    setState(
      () {
        this.produtoSelecionado = produtoSelecionado;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Produto'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: new EdgeInsets.only(left: 25, right: 25),
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: DropdownButton(
              value: this.produtoSelecionado,
              items: this.listaProdutosMenu,
              onChanged: this.aoSelecionarProduto,
              icon: Icon(Icons.arrow_downward),
              isExpanded: true,
              iconSize: 24,
              elevation: 16,
              style: TextStyle(fontSize: 16, color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
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
            child: TextField(
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
            child: TextField(
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
              child: Icon(Icons.add),
              onPressed: () {
                Produto produto = Produto(
                  url: this.produtoSelecionado.url,
                  nome: this.nomeController.text,
                  descricao: this.descricaoController.text,
                  preco: double.tryParse(precoController.text),
                );
                Navigator.pop(context, produto);
              },
            ),
          ),
        ],
      ),
    );
  }
}
