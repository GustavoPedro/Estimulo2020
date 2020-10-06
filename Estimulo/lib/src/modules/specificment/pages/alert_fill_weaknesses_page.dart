import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class AlertFillWeaknessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.secondary,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    "lib/assets/images/logo.jpg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Text(
                "Bem Vindo ao Estimulo 2020, para receber um acompanhamento dos maiores empresários do país é necessário que preencha algumas perguntas, para que possamos te direcionar para as melhores soluções na aplicação",
                style: TextStyle(fontSize: 20, color: AppColors.white),
                textAlign: TextAlign.center,
              ),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              color: AppColors.terciary,
              onPressed: () {},
              child: Text(
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
