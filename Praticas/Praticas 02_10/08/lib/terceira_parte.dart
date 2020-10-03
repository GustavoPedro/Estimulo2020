import 'package:flutter/material.dart';

class TerceiraParte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Página Inicial"),
      ),
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow[800],
                ),
              ),
            ),
            Center(
              child: Container(
                child: SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                  ),
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(55.0),
              ),
            ),
          ],
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
