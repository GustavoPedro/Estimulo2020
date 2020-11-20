import 'package:Estimulo/src/modules/weaknesses/pages/weaknesses/weaknesses_page.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/page_container.dart';
import 'package:flutter/material.dart';

class AlertFillWeaknessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Image.asset(
                    "lib/assets/images/logo.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Bem Vindo ao Estimulo 2020, para receber um acompanhamento dos maiores empresários do país é necessário que preencha algumas perguntas, para que possamos te direcionar para as melhores soluções na aplicação",
                  style: TextStyle(fontSize: 20, color: AppColors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 0,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  color: AppColors.terciary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WeaknessesPage(scaffoldKey: null),
                      ),
                    );
                  },
                  child: Text(
                    'Vamos Lá',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
