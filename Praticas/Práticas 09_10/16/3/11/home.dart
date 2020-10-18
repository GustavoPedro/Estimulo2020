import 'package:flutter/material.dart';

import 'cidade.dart';
import 'details.dart';

class Home extends StatelessWidget {
  final List<Cidade> cidades = <Cidade>[
    Cidade(
      nome: "Nova York",
      descricao:
          "TESTTESTTESTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      imagem:
          "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "Contagem",
      descricao: "Best Place",
      imagem:
          "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "BH",
      descricao: "Contagem é Melhor",
      imagem:
          "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "BH",
      descricao: "Contagem é Melhor",
      imagem:
          "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "BH",
      descricao: "Contagem é Melhor",
      imagem:
          "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "BH",
      descricao: "Contagem é Melhor",
      imagem:
          "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "BH",
      descricao: "Contagem é Melhor",
      imagem:
          "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Cidade(
      nome: "BH",
      descricao: "Contagem é Melhor",
      imagem:
          "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cidades.length,
          itemBuilder: (context, index) {
            Cidade cidade = cidades[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(cidade: cidade),
                    ),
                  );
                },
                child: Image.network(
                  cidade.imagem,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
