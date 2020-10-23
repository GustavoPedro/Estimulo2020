import 'package:flutter/material.dart';

class RotaGenerica extends StatelessWidget {
  final String rota;

  const RotaGenerica({Key key, this.rota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rota),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Center(
            child: Column(
              children: [
                Text(
                  rota.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(26),
                    child: Text("Voltar para Primeira Rota"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
