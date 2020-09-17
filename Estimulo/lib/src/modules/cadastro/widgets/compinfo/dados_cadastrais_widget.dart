import 'package:Estimulo/src/modules/cadastro/controller/cadastro_controller.dart';
import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/h2.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DadosCadastraisWidget extends StatelessWidget {
  final CadastroController _cadastroController =
      Modular.get<CadastroController>();
  final TextEditingController negocioFamiliar = TextEditingController()
    ..text = "Sim";
  final TextEditingController txbRazaoSocial = TextEditingController()
    ..text = "Fifa";

  @override
  Widget build(BuildContext context) {
    txbRazaoSocial.text = _cadastroController.razaoSocial;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: TitleTwoWidget(
            text: "Dados Cadastrais",
          ),
        ),
        TextFormRequired(
          requiredErrorMsg: "Preencha a Razão Social",
          hintText: "Sua resposta",
          labelText: "Razão Social",
          textEditingController: txbRazaoSocial,
          onEdit: (val) => _cadastroController.razaoSocial = val,
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
          textEditingController: negocioFamiliar,
          hintText: "Sua resposta",
          labelText: "É negócio familiar ?",
        ),
        Divider(
          color: AppColors.white,
        ),
      ],
    );
  }
}
