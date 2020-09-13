import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserInfoPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // Keys
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações do participante"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormRequired(
                    requiredErrorMsg: "Preencha o Nome",
                    hintText: "Sua resposta",
                    labelText: "Nome Completo",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  TextFormRequired(
                    requiredErrorMsg: "Preencha o Endereço",
                    hintText: "Sua resposta",
                    labelText: "Endereço Completo",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  TextFormRequired(
                    requiredErrorMsg: "Preencha o Telefone",
                    hintText: "Sua resposta",
                    labelText: "Telefone",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  TextFormRequired(
                    requiredErrorMsg: "Preencha o Email",
                    hintText: "Sua resposta",
                    labelText: "Email",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Modular.to.pushNamed("/compinfo");
                          }
                        },
                        child: Text(
                          "Próximo",
                          style: TextStyle(color: AppColors.white),
                        ),
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
