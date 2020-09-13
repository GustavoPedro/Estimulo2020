import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CompInfoPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController familiarBusiness = TextEditingController();
  @override
  Widget build(BuildContext context) {
    familiarBusiness.text = "Sim";
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações da empresa"),
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
                    requiredErrorMsg: "Preencha a Razão Social",
                    hintText: "Sua resposta",
                    labelText: "Razão Social",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  TextFormRequired(
                    requiredErrorMsg: "Preencha o Cnpj",
                    hintText: "Sua resposta",
                    labelText: "Cnpj",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  TextFormRequired(
                    requiredErrorMsg: "Preencha a Idade da Empresa",
                    hintText: "Sua resposta",
                    labelText: "Idade da empresa",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  TextFormRadioPickerWidget(
                    pickerTitle: "É negócio familiar?",
                    options: <String>["Sim", "Não"],
                    textEditingController: familiarBusiness,
                    hintText: "Sua resposta",
                    labelText: "É negócio familiar ?",
                  ),
                  Divider(
                    color: AppColors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        onPressed: () {
                          Modular.to.pushNamed("/userinfo");
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
