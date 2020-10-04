import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class AlertFillWeaknessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.network(
                      "https://braziljournal.s3.amazonaws.com/media/10991-ac21c8b5-202b-0eb1-86aa-e58a883eac7b.jpg?v=1587692555"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Text(
                  "Bem Vindo ao Estimulo 2020, para receber um acompanhamento dos maiores empresários do país é necessário que preencha algumas perguntas, para que possamos te direcionar para as melhores soluções na aplicação"),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              color: AppColors.terciary,
              onPressed: () {},
              child: const Text(
                'Vamos Lá',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
