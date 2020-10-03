import 'package:flutter/material.dart';

class SegundaParte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Página Inicial"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5, right: 5),
          decoration: BoxDecoration(
            color: Colors.red[600],
          ),
          child: Text(
            "Olá Mundo!!!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo de botão",
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// Container(
//           padding: EdgeInsets.all(150),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.yellow[800],
//           ),
//           child: Text(
//             "Olá Mundo!!!",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
