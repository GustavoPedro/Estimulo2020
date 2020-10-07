import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/h2.dart';
import 'package:Estimulo/src/shared/widgets/text_form_required.dart';
import 'package:Estimulo/src/shared/widgets/text_form_with_decoration.dart';
import 'package:flutter/material.dart';

class DadosContatoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: TitleTwoWidget(
              text: "Contato",
            ),
          ),
          Divider(),
          TextFormRequired(
            requiredErrorMsg: "Preencha o Endereço Comercial",
            hintText: "Sua resposta",
            labelText: "Endereço Comercial",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRequired(
            requiredErrorMsg: "Preencha o Município",
            hintText: "Sua resposta",
            labelText: "Município",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRequired(
            requiredErrorMsg: "Preencha o Estado",
            hintText: "Sua resposta",
            labelText: "Estado",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRequired(
            requiredErrorMsg: "Preencha o Telefone Comercial",
            hintText: "Sua resposta",
            labelText: "Telefone Comercial",
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
          TextFormWithDecoration(
            hintText: "Sua resposta",
            labelText:
                "Informe o site / rede social da empresa (caso não tenha deixe em branco)",
          ),
          Divider(
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
