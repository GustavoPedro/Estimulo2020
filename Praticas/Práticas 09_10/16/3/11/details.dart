import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cidade.dart';

class Details extends StatelessWidget {
  final Cidade cidade;

  const Details({Key key, this.cidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(cidade.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 10, right: 10),
        child: Column(
          children: [
            Center(
              child: Text(
                cidade.nome,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(cidade.descricao),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
