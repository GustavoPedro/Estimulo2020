import 'package:Estimulo/src/shared/app_colors.dart';
import 'package:Estimulo/src/shared/widgets/h2.dart';
import 'package:Estimulo/src/shared/widgets/text_form_radio_picker.dart';
import 'package:flutter/material.dart';

class DadosPandemiaWidget extends StatelessWidget {
  final setorAtuacao = TextEditingController();
  final faturamentoAntesCrise = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: TitleTwoWidget(
              text: "Informações durante a pandemia",
            ),
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Quantos funcionários você demitiu? *",
            options: <String>[
              "1 a 3",
              "4 a 6",
              "7 a 9",
              "Mais de 9",
              "Nenhuma demissão foi realizada"
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Quantos funcionários você demitiu?",
          ),
          Divider(
            color: AppColors.white,
          ),
          TextFormRadioPickerWidget(
            pickerTitle: "Percentual de redução de Faturamento mensal: *",
            options: <String>[
              "O faturamento não teve redução.",
              "1% a 20%",
              "21% a 40%",
              "41% a 60%",
              "Mais de 60%",
              "Não tenho essa informação."
            ],
            textEditingController: setorAtuacao,
            hintText: "Sua resposta",
            labelText: "Percentual de redução de Faturamento mensal: *",
          ),
          Divider(
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
