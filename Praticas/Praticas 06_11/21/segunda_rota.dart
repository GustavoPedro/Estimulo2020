import 'package:flutter/material.dart';
import 'package:praticas_06_11/21/compra.dart';
import 'package:praticas_06_11/21/detalhes.dart';
import 'package:praticas_06_11/21/produto_model.dart';

import 'cartao.dart';

class SegundaRota extends StatefulWidget {
  @override
  SegundaRotaState createState() => SegundaRotaState();
}

class SegundaRotaState extends State<SegundaRota> {
  List<ProdutoModel> produtos = <ProdutoModel>[
    ProdutoModel(
      preco: 3.10,
      titulo: 'Imagem 01',
      subtitulo:
          'Lorem Ipsum is simply dummy text of the printing and typesett in g industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tomake a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      imgUrl:
          'https://busmg.files.wordpress.com/2017/02/1900-3-77029-pyv9610-moisesmagno.jpg',
    ),
    ProdutoModel(
      preco: 2.15,
      titulo: 'Imagem 02',
      subtitulo:
          'Lorem Ipsum is simply dummy text of the printing and typesett in g industry. Lorem Ipsum has been the industry\'s standard dummy text ever sinc e the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also  the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      imgUrl:
          'https://3.bp.blogspot.com/-qafFHt4br1A/U0AyW5fXu0I/AAAAAAAABsE/Ucdd10rtH7I/s1600/SAM_4769.JPG',
    ),
    ProdutoModel(
      preco: 2.95,
      titulo: 'Imagem 03',
      subtitulo:
          'Lorem Ipsum is simply dummy text of the printing and typesett in g industry. Lorem Ipsum has been the industry\'s standard dummy text ever sinc e the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also  the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQpwBwdckitWP-juB-fCAVVp-CbvS1tK9w-AQ&usqp=CAU',
    ),
    ProdutoModel(
      preco: 1.97,
      titulo: 'Imagem 04',
      subtitulo:
          'Lorem Ipsum is simply dummy text of the printing and typesett in g industry. Lorem Ipsum has been the industry\'s standard dummy text ever sinc e the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also  the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      imgUrl:
          'https://brt.onibusbrasil.com/2019/6/5/p/4e91a32ec5e58a399e8369313849a6f0.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(40),
          child: Center(
            child: Text(
              'Galeria',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: produtos.length,
            itemBuilder: (context, index) {
              ProdutoModel produto = produtos[index];
              return Cartao(
                preco: produto.preco,
                subtitulo: produto.subtitulo,
                titulo: produto.titulo,
                url: produto.imgUrl,
                onPressedComprar: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Compra(),
                    ),
                  );
                },
                onPressedDetalhes: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detalhes(
                        produto: produto,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
