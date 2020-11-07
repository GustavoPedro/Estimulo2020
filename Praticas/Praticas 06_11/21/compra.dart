import 'package:flutter/material.dart';

class Compra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.purple[300],
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Página de compra',
            style: estilo,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
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
    );
  }
}
