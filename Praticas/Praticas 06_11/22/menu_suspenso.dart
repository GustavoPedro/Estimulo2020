import 'package:flutter/material.dart';

import 'produto.dart';

List<DropdownMenuItem<Produto>> montarListaProdutosMenu(List produtos) {
  List<DropdownMenuItem<Produto>> listaProdutosMenu = List();
  for (Produto produto in produtos) {
    listaProdutosMenu.add(
      DropdownMenuItem(
        value: produto,
        child: Text(produto.nome),
      ),
    );
  }
  return listaProdutosMenu;
}

class MenuSuspenso extends StatefulWidget {
  MenuSuspensoState createState() {
    return MenuSuspensoState();
  }
}

class MenuSuspensoState extends State<MenuSuspenso> {
  Produto produtoSelecionado;
  List<DropdownMenuItem<Produto>> listaProdutosMenu;
  /*O método initState() gera o estado inicial do widget
 quando um objeto da classe é instanciado.*/
  @override
  void initState() {
    listaProdutosMenu = montarListaProdutosMenu(Produto.produtos());
    produtoSelecionado = listaProdutosMenu[0].value;
    super.initState();
  }

  aoSelecionarProduto(Produto produtoSelecionado) {
    setState(
      () {
        this.produtoSelecionado = produtoSelecionado;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Produto:',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        DropdownButton(
          value: this.produtoSelecionado,
          items: this.listaProdutosMenu,
          onChanged: this.aoSelecionarProduto,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
        ),
        Text('${this.produtoSelecionado.nome}'),
        SizedBox(
          height: 20,
        ),
        Image(
          height: 300,
          width: 450,
          image: NetworkImage(
            this.produtoSelecionado.url,
          ),
        ),
        Text('${this.produtoSelecionado.descricao}'),
        SizedBox(
          height: 20,
        ),
        Text(
          'R\$ ${this.produtoSelecionado.preco.toStringAsFixed(2)}',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
