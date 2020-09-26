import 'package:Estimulo/src/modules/cadastro/pages/user_info_page.dart';
import 'package:Estimulo/src/modules/cadastro/widgets/terms_widget.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações"),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TermsWidget(),
              Text(
                "\nAceita participar do mapeamento? *",
                style: TextStyle(fontSize: 18, color: AppColors.black),
                textAlign: TextAlign.left,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserInfoPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sim",
                      style: TextStyle(color: AppColors.white),
                    ),
                    color: AppColors.primary,
                  ),
                  FlatButton(onPressed: () {}, child: Text("Não")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
